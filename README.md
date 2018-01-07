# PHPCS Gitamine Plugin

## Requirements

* php >= 7.1
* phpcs
* Gitamine
* Linux/Mac

## Installation

```bash
gitamine install git4min3/gitamine-phpcs
```

## Configuration

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    phpcs: ~    
```

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    phpcs:
      bin: bin/phpcs          # Default phpcs
      phpcbf-bin: bin/phpcbf  # Default phpcbf
      phpcbf: true            # Default false. Executes phpcbf before phpcs
      standard: PSR2          # Default depends on your phpcs configuration
```
