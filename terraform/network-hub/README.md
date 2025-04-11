# Network Hub Account

Esta conta é responsável por gerenciar a infraestrutura de rede centralizada da organização, incluindo:

## Responsabilidades Principais

1. **Transit Gateway**
   - Hub central de conectividade entre todas as VPCs
   - Gerenciamento de rotas e políticas de roteamento
   - Conexões com redes on-premises

2. **DNS Centralizado**
   - Route53 Private Hosted Zones
   - Resolução de DNS entre contas

3. **Segurança de Rede**
   - Network Firewall
   - NACLs e Security Groups base
   - Monitoramento de tráfego

## Estrutura

- **Organizational Unit**: Network
- **Tier**: Production
- **Purpose**: Core Networking

## Tags

- Environment: Production
- Purpose: Network Hub
- ManagedBy: AFT
- Owner: Cloud Team
- Network: Core

## Customizações

Esta conta terá customizações específicas para:
- Configuração do Transit Gateway
- Políticas de roteamento
- Configurações de DNS
- Regras de segurança base 