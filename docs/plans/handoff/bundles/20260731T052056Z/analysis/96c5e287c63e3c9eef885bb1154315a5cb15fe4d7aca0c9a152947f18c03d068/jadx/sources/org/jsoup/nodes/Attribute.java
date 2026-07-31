package org.jsoup.nodes;

import androidx.room.Room;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Attribute implements Map.Entry, Cloneable {
    public final String key;
    public Attributes parent;
    public String val;
    public static final String[] booleanAttributes = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public static final Pattern xmlKeyReplace = Pattern.compile("[^-a-zA-Z0-9_:.]+");
    public static final Pattern htmlKeyReplace = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]+");

    public Attribute(String str, String str2, Attributes attributes) {
        Room.notNull(str);
        String trim = str.trim();
        Room.notEmpty(trim);
        this.key = trim;
        this.val = str2;
        this.parent = attributes;
    }

    public static String getValidKey(String str, Document.OutputSettings.Syntax syntax) {
        if (syntax == Document.OutputSettings.Syntax.xml && !isValidXmlKey(str)) {
            String replaceAll = xmlKeyReplace.matcher(str).replaceAll("_");
            if (isValidXmlKey(replaceAll)) {
                return replaceAll;
            }
            return null;
        }
        if (syntax != Document.OutputSettings.Syntax.html || isValidHtmlKey(str)) {
            return str;
        }
        String replaceAll2 = htmlKeyReplace.matcher(str).replaceAll("_");
        if (isValidHtmlKey(replaceAll2)) {
            return replaceAll2;
        }
        return null;
    }

    public static void htmlNoValidate(String str, String str2, QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        quietAppendable$BaseAppendable.append(str);
        if (outputSettings.syntax == Document.OutputSettings.Syntax.html) {
            if (str2 == null) {
                return;
            }
            if ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && Arrays.binarySearch(booleanAttributes, QuietAppendable$BaseAppendable.lowerCase(str)) >= 0) {
                return;
            }
        }
        quietAppendable$BaseAppendable.append("=\"");
        Entities.escape(quietAppendable$BaseAppendable, Attributes.checkNotNull(str2), outputSettings, 2);
        quietAppendable$BaseAppendable.append('\"');
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
        if (obj == null || Attribute.class != obj.getClass()) {
            return false;
        }
        Attribute attribute = (Attribute) obj;
        return this.key.equals(attribute.key) && Objects.equals(this.val, attribute.val);
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
    public final Object setValue(Object obj) {
        String str;
        int indexOfKey;
        String str2 = (String) obj;
        String str3 = this.val;
        Attributes attributes = this.parent;
        if (attributes != null && (indexOfKey = attributes.indexOfKey((str = this.key))) != -1) {
            str3 = this.parent.get(str);
            this.parent.vals[indexOfKey] = str2;
        }
        this.val = str2;
        return Attributes.checkNotNull(str3);
    }

    public final String toString() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        QuietAppendable$BaseAppendable wrap = QuietAppendable$BaseAppendable.wrap(borrowBuilder);
        Document.OutputSettings outputSettings = new Document.OutputSettings();
        String str = this.val;
        String validKey = getValidKey(this.key, outputSettings.syntax);
        if (validKey != null) {
            htmlNoValidate(validKey, str, wrap, outputSettings);
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }
}
