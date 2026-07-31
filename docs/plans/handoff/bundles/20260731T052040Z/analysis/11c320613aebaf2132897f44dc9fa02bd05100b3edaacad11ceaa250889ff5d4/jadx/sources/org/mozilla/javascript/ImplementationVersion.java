package org.mozilla.javascript;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.jar.Attributes;
import java.util.jar.Manifest;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ImplementationVersion {
    private static final ImplementationVersion version = new ImplementationVersion();
    private String versionString;

    private ImplementationVersion() {
        InputStream openStream;
        Attributes mainAttributes;
        try {
            Enumeration<URL> resources = ImplementationVersion.class.getClassLoader().getResources("META-INF/MANIFEST.MF");
            while (resources.hasMoreElements()) {
                try {
                    openStream = resources.nextElement().openStream();
                    try {
                        mainAttributes = new Manifest(openStream).getMainAttributes();
                    } finally {
                    }
                } catch (IOException unused) {
                    continue;
                }
                if ("Mozilla Rhino".equals(mainAttributes.getValue("Implementation-Title"))) {
                    StringBuilder sb = new StringBuilder(23);
                    sb.append("Rhino ");
                    sb.append(mainAttributes.getValue("Implementation-Version"));
                    String value = mainAttributes.getValue("Built-Date");
                    if (value != null) {
                        String replaceAll = value.replaceAll("-", " ");
                        sb.append(' ');
                        sb.append(replaceAll);
                    }
                    this.versionString = sb.toString();
                    if (openStream != null) {
                        openStream.close();
                        return;
                    }
                    return;
                }
                if (openStream != null) {
                    openStream.close();
                }
            }
            this.versionString = "Rhino Snapshot";
        } catch (IOException unused2) {
        }
    }

    public static String get() {
        return version.versionString;
    }
}
