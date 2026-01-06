# ML Math From Scratch

Proyecto para aprender y practicar las matemáticas fundamentales de Machine Learning implementando los conceptos desde cero.

## 📚 Estructura

- `01_linear_algebra/` - Vectores, matrices, productos punto, normas, eigendescomposición, SVD, PCA
- `02_calculus/` - Derivadas, gradientes, autodiferenciación
- `03_probability/` - Distribuciones, entropía, KL divergence, cross-entropy
- `04_statistics/` - Testing de hipótesis, regresión desde cero
- `05_optimization/` - Gradient descent, optimizadores
- `06_algorithms_data_structures/` - Algoritmos y estructuras de datos relevantes

## 🚀 Instalación

### Opción 1: Docker (Recomendado)

```bash
docker build -t ml-math .
docker run -p 8888:8888 -v $(pwd):/workspace ml-math
```

O usando docker-compose:

```bash
docker-compose up
```

Luego accede a Jupyter Lab en: `http://localhost:8888`

### Opción 2: Instalación Local

1. Clona el repositorio:
```bash
git clone <url-del-repo>
cd ml-math-from-scratch
```

2. Crea un entorno virtual (recomendado):
```bash
python -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate
```

3. Instala las dependencias:
```bash
pip install -r requirements.txt
```

4. Para PyTorch, instala según tu sistema desde [pytorch.org](https://pytorch.org/get-started/locally/)

5. Inicia Jupyter Lab:
```bash
jupyter lab
```

## 📦 Dependencias

Las dependencias principales incluyen:
- NumPy, SciPy, Pandas
- Matplotlib, Seaborn
- Scikit-learn
- TensorFlow
- PyTorch (ver instalación en Dockerfile o pytorch.org)

## 📝 Uso

Cada directorio contiene notebooks de Jupyter con ejemplos y ejercicios prácticos. Los notebooks están organizados por tema y progresan desde conceptos básicos hasta implementaciones más avanzadas.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o pull request para discutir cambios.
