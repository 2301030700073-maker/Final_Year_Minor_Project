package org.jsoup.nodes;

import j$.util.Objects;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Attribute implements Map.Entry, Cloneable {
    public final String key;
    public Attributes parent;
    public String val;
    public static final String[] booleanAttributes = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public static final Pattern xmlKeyReplace = Pattern.compile("[^-a-zA-Z0-9_:.]+");
    public static final Pattern htmlKeyReplace = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]+");

    public Attribute(String str, String str2, Attributes attributes) {
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        this.key = trim;
        this.val = str2;
        this.parent = attributes;
    }

    public static String getValidKey(String str, int i) {
        if (i == 2 && !isValidXmlKey(str)) {
            String replaceAll = xmlKeyReplace.matcher(str).replaceAll("_");
            if (isValidXmlKey(replaceAll)) {
                return replaceAll;
            }
        } else {
            if (i != 1 || isValidHtmlKey(str)) {
                return str;
            }
            String replaceAll2 = htmlKeyReplace.matcher(str).replaceAll("_");
            if (isValidHtmlKey(replaceAll2)) {
                return replaceAll2;
            }
        }
        return null;
    }

    public static void htmlNoValidate(String str, String str2, Appendable appendable, Document.OutputSettings outputSettings) {
        appendable.append(str);
        if (outputSettings.syntax == 1) {
            if (str2 == null) {
                return;
            }
            if ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && Arrays.binarySearch(booleanAttributes, Functions.lowerCase(str)) >= 0) {
                return;
            }
        }
        appendable.append("=\"");
        Entities.escape(appendable, Attributes.checkNotNull(str2), outputSettings, 2);
        appendable.append('\"');
    }

    public static boolean isValidHtmlKey(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || ((charAt >= 127 && charAt <= 159) || charAt == ' ' || charAt == '\"' || charAt == '\'' || charAt == '/' || charAt == '=')) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidXmlKey(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char charAt = str.charAt(0);
        if ((charAt < 'a' || charAt > 'z') && !((charAt >= 'A' && charAt <= 'Z') || charAt == '_' || charAt == ':')) {
            return false;
        }
        for (int i = 1; i < length; i++) {
            char charAt2 = str.charAt(i);
            if ((charAt2 < 'a' || charAt2 > 'z') && ((charAt2 < 'A' || charAt2 > 'Z') && !((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '-' || charAt2 == '_' || charAt2 == ':' || charAt2 == '.'))) {
                return false;
            }
        }
        return true;
    }

    public final Object clone() {
        try {
            return (Attribute) super.clone();
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Attribute.class == obj.getClass()) {
            Attribute attribute = (Attribute) obj;
            if (Objects.equals(this.key, attribute.key) && Objects.equals(this.val, attribute.val)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return Attributes.checkNotNull(this.val);
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return Objects.hash(this.key, this.val);
    }

    @Override // java.util.Map.Entry
    public final String setValue(String str) {
        String str2;
        int indexOfKey;
        String str3 = this.val;
        Attributes attributes = this.parent;
        if (attributes != null && (indexOfKey = attributes.indexOfKey((str2 = this.key))) != -1) {
            str3 = this.parent.get(str2);
            this.parent.vals[indexOfKey] = str;
        }
        this.val = str;
        return Attributes.checkNotNull(str3);
    }

    public final String toString() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        try {
            Document.OutputSettings outputSettings = new Document("").outputSettings;
            String str = this.key;
            String str2 = this.val;
            String validKey = getValidKey(str, outputSettings.syntax);
            if (validKey != null) {
                htmlNoValidate(validKey, str2, borrowBuilder, outputSettings);
            }
            return StringUtil.releaseBuilder(borrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }
}
