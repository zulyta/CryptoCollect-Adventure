### **CryptoCollect Adventure**

CryptoCollect Adventure es un juego de colección blockchain en el que los jugadores pueden recolectar valiosos tokens coleccionables y utilizar tokens ERC-20 para desbloquear recompensas y adquirir más coleccionables. Los jugadores participarán en misiones para ganar tokens ERC-20 y luego podrán canjear estos tokens por tokens coleccionables únicos y valiosos.

#### **Implementación**

1. Preparación del entorno

- Abre Remix en tu navegador: https://remix.ethereum.org/
- Crea un nuevo archivo para cada contrato (por ejemplo, "GameToken.sol" y "CollectibleToken.sol").

2. Implementa los siguientes contratos

   - `Contrato ERC-20 - GameToken.sol`

     Este contrato implementa un token fungible basado en el estándar ERC-20. Los tokens fungibles son intercambiables entre sí, lo que significa que un token es equivalente en valor a otro token del mismo tipo. Este contrato se utiliza en el contexto del juego como una forma de recompensar a los jugadores y permitirles interactuar con el contrato ERC-721 para adquirir tokens coleccionables. Los aspectos clave del contrato son:

     - Creación de Tokens: Al desplegar el contrato, se crean 1,000,000 de tokens "GameToken" y se asignan al creador del contrato.
     - `rewardTokens`: Función que permite al contrato recompensar a los jugadores transfiriendo tokens desde su cuenta a la cuenta del jugador que completó una misión.
     - `exchangeTokensForCollectible`: Función que permite a los jugadores intercambiar tokens "GameToken" por tokens coleccionables en el contrato ERC-721 "CollectibleToken".

   - `Contrato ERC-721 - CollectibleToken.sol`

     Este contrato implementa un token no fungible basado en el estándar ERC-721. Los tokens no fungibles son únicos y no son intercambiables uno a uno. Cada token tiene un identificador único y características que lo distinguen de otros tokens. Este contrato representa los tokens coleccionables en el juego y permite a los jugadores poseer y comerciar con ellos. Los aspectos clave del contrato son:

     - Creación de Tokens: Cada vez que se llama a la función `mintCollectible`, se crea un nuevo token coleccionable único y se asigna al propietario especificado.
     - Tokens Únicos: Cada token coleccionable tiene su propio identificador único.
     - `tokenIdCounter`: Variable que lleva la cuenta de los tokens coleccionables creados para garantizar identificadores únicos.

3. Compilación y despliegue

- Asegúrate de que los contratos estén importando las versiones correctas de las bibliotecas de OpenZeppelin.
- Compila cada contrato en Remix.
- Despliega primero el contrato ERC-20 ("GameToken") y toma nota de su dirección.
- Luego, despliega el contrato ERC-721 ("CollectibleToken") y toma nota de su dirección.

4. Prueba la interacción

- En el contrato GameToken.sol, usa la función `exchangeTokensForCollectible` para intercambiar tokens ERC-20 por tokens ERC-721.
- En Remix, invoca la función `rewardTokens` en el contrato GameToken para enviar tokens a una dirección.
- Luego, invoca la función `exchangeTokensForCollectible` para convertir algunos tokens en tokens coleccionables en el contrato CollectibleToken.

#### **Cómo Jugar**

- **Misión y Recompensa:**
  - Los jugadores completan misiones en el juego para ganar tokens ERC-20 llamados "Adventure Tokens".
  - Cada misión completada otorga una cierta cantidad de Adventure Tokens basada en la dificultad y logros de la misión.
- **Intercambio de Tokens:**
  - Los jugadores pueden usar sus Adventure Tokens para canjear tokens coleccionables únicos en el contrato ERC-721 llamado "CollectibleToken".
  - Utilizando la función `exchangeTokensForCollectible` del contrato GameToken, los jugadores intercambian una cantidad específica de Adventure Tokens por un nuevo token coleccionable único en el contrato CollectibleToken.
- **Colección y Valor:**
  - Los tokens coleccionables ERC-721 son únicos y no fungibles, lo que significa que cada uno tiene su propio identificador y características.
  - Los jugadores pueden acumular una colección de tokens coleccionables que representan logros y progresos en el juego.
  - Algunos tokens coleccionables pueden tener un mayor valor en la comunidad debido a su rareza y atributos especiales.
- **Intercambio y Mercado:**
  - Los jugadores pueden comerciar con sus tokens coleccionables en un mercado en línea o en una plataforma de intercambio descentralizado que admite tokens ERC-721.
  - Los tokens coleccionables pueden ser comprados, vendidos o intercambiados entre jugadores, lo que agrega un elemento de economía y comercio al juego.
- **Competición y Logros:**
  - Los jugadores pueden competir por la colección más valiosa y completa en la comunidad.
  - Los logros y recompensas en el juego se pueden vincular a la posesión de ciertos tokens coleccionables únicos.

Este repositorio está diseñado para aprender y experimentar con contratos inteligentes en Ethereum. Puedes explorar y comprender cómo se implementan los estándares ERC20 y ERC721 en Solidity, y cómo los contratos interactúan para crear la mecánica del juego. 