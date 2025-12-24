resource "aws_ecs_service" "lms_service" {
  name            = "${var.project_name}-service"
  cluster         = aws_ecs_cluster.lms_cluster.id
  task_definition = aws_ecs_task_definition.lms_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = data.aws_subnets.default.ids
    security_groups  = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }
}
