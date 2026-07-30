package com.amazonaws.regions;

import com.facebook.internal.ServerProtocol;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Deprecated
/* loaded from: classes.dex */
public class RegionMetadataParser {
    @Deprecated
    public RegionMetadataParser() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m5125do(String str, Element element) {
        Node item = element.getElementsByTagName(str).item(0);
        if (item == null) {
            return null;
        }
        return item.getChildNodes().item(0).getNodeValue();
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static ArrayList m5126if(FileInputStream fileInputStream) {
        try {
            try {
                NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(fileInputStream).getElementsByTagName("Region");
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < elementsByTagName.getLength(); i++) {
                    Node item = elementsByTagName.item(i);
                    if (item.getNodeType() == 1) {
                        Element element = (Element) item;
                        Region region = new Region(m5125do("Name", element), m5125do("Domain", element));
                        NodeList elementsByTagName2 = element.getElementsByTagName("Endpoint");
                        for (int i2 = 0; i2 < elementsByTagName2.getLength(); i2++) {
                            Element element2 = (Element) elementsByTagName2.item(i2);
                            String m5125do = m5125do("ServiceName", element2);
                            String m5125do2 = m5125do("Hostname", element2);
                            String m5125do3 = m5125do("Http", element2);
                            String m5125do4 = m5125do("Https", element2);
                            region.f8962do.put(m5125do, m5125do2);
                            region.f8965if.put(m5125do, Boolean.valueOf(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(m5125do3)));
                            region.f8963for.put(m5125do, Boolean.valueOf(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(m5125do4)));
                        }
                        arrayList.add(region);
                    }
                }
                return arrayList;
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new IOException("Unable to parse region metadata file: " + e2.getMessage(), e2);
            }
        } finally {
            try {
                fileInputStream.close();
            } catch (IOException unused) {
            }
        }
    }
}
