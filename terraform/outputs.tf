output "ecr_repo_url" {
  value = aws_ecr_repository.lms_repo.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.lms_cluster.name
}

output "task_definition_family" {
  value = aws_ecs_task_definition.lms_task.family
}
