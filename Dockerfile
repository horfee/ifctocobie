from python:3

RUN mkdir /opt/ifc
WORKDIR /opt/ifc

RUN pip install ifcopenshell-python
RUN curl -L https://raw.githubusercontent.com/IfcOpenShell/IfcOpenShell/v0.7.0/src/ifccobie/cobie.py -o /usr/bin/cobie.py
RUN pip install lark xlsxwriter

VOLUME /opt/ifc

ENTRYPOINT ["python3", "/usr/bin/cobie.py"]
