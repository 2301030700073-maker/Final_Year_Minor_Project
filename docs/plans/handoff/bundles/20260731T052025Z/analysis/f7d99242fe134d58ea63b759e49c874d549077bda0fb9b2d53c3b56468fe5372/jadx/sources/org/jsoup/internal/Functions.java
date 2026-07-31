package org.jsoup.internal;

import java.util.Locale;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Functions {
    public static final Element$$ExternalSyntheticLambda1 SetFunction = new Element$$ExternalSyntheticLambda1(2);
    public static final Element$$ExternalSyntheticLambda1 MapFunction = new Element$$ExternalSyntheticLambda1(3);
    public static final Element$$ExternalSyntheticLambda1 IdentityMapFunction = new Element$$ExternalSyntheticLambda1(4);
    public static final String[] FormSubmitTags = {"input", "keygen", "object", "select", "textarea"};

    public static String lowerCase(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static String normalize(String str) {
        return lowerCase(str).trim();
    }
}
