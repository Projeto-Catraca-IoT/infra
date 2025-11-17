# Docker compose

Para rodar a aplicação, siga esses passos simples:

**Observação:** Vamos considerar que você possua o Docker e o Docker compose já instalados em sua máquina

1. Faça o download do arquivo compose.yml em sua máquina, localizado [aqui](https://github.com/Projeto-Catraca-IoT/infra/docker/compose.yml)
2. No mesmo local que você criar o arquivo anterior, crie um arquivo chamado `.env` seguindo [essas](https://github.com/Projeto-Catraca-IoT/infra/docker/.env.example) variáveis, preenchendo elas de acordo.
3. Rode o seguinte comando em sua máquina:
``` bash
    #Certifique-se de estar no mesmo nível do arquivo compose.yml
    docker compose up --build -d
```
4. Agora basta acessar `http://localhost:5173`
