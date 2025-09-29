# k3s_image_prune

Runs `k3s ctr -n k8s.io image prune` on targeted hosts to remove stale container images from k3s nodes.

## Role Variables

- `k3s_image_prune_binary` (default: `k3s`): path or command used to invoke k3s.
- `k3s_image_prune_namespace` (default: `k8s.io`): containerd namespace to prune.
- `k3s_image_prune_prune_all` (default: `true`): include unused images referenced by running containers.
- `k3s_image_prune_extra_args` (default: `[]`): additional arguments appended to the prune command.
- `k3s_image_prune_run` (default: `true`): toggle to disable the prune task without removing the role.

## Usage

Add the role to a play targeting your k3s nodes and run it with the `k3s_image_prune` tag:

```bash
ansible-playbook server/playbook.yaml --limit k8s --tags k3s_image_prune
```
