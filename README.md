# PHPCS Gitamine Plugin

## Requirements

* php >= 7.1
* phpcs
* gitamine
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
      bin: bin/phpcs   #default phpcs
      standard: PSR2   #default depends on your phpcs configuration
```
