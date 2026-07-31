package org.jsoup.safety;

import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import j$.util.Map;
import j$.util.Objects;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.jsoup.helper.Validate;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.Functions;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Safelist {
    public final HashSet tagNames = new HashSet();
    public final HashMap attributes = new HashMap();
    public final HashMap enforcedAttributes = new HashMap();
    public final HashMap protocols = new HashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AttributeKey extends TypedValue {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Protocol extends TypedValue {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TagName extends TypedValue {
        public static TagName valueOf(String str) {
            return new TagName(Functions.lowerCase(str));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class TypedValue {
        public final String value;

        public TypedValue(String str) {
            Validate.notNull(str);
            this.value = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.value, ((TypedValue) obj).value);
        }

        public final int hashCode() {
            return this.value.hashCode();
        }

        public final String toString() {
            return this.value;
        }
    }

    public final void addAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.isTrue("No attribute names supplied.", strArr.length > 0);
        addTags(str);
        TagName valueOf = TagName.valueOf(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(new AttributeKey(Functions.lowerCase(str2)));
        }
        ((Set) Map.EL.computeIfAbsent(this.attributes, valueOf, Functions.SetFunction)).addAll(hashSet);
    }

    public final void addProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Set set = (Set) Map.EL.computeIfAbsent((java.util.Map) Map.EL.computeIfAbsent(this.protocols, TagName.valueOf(str), Functions.MapFunction), new AttributeKey(Functions.lowerCase(str2)), Functions.SetFunction);
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.add(new Protocol(str3));
        }
    }

    public final void addTags(String... strArr) {
        for (String str : strArr) {
            Validate.notEmpty(str);
            if (str.equalsIgnoreCase("noscript")) {
                throw new ValidationException("noscript is unsupported in Safelists, due to incompatibilities between parsers with and without script-mode enabled");
            }
            this.tagNames.add(TagName.valueOf(str));
        }
    }

    public final Attributes getEnforcedAttributes(String str) {
        Attributes attributes = new Attributes();
        TagName valueOf = TagName.valueOf(str);
        HashMap hashMap = this.enforcedAttributes;
        if (hashMap.containsKey(valueOf)) {
            Iterator it = ((java.util.Map) hashMap.get(valueOf)).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = ((AttributeKey) entry.getKey()).value;
                entry.getValue().getClass();
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return null;
            }
        }
        return attributes;
    }

    public final boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        TagName valueOf = TagName.valueOf(str);
        String str2 = attribute.key;
        AttributeKey attributeKey = new AttributeKey(Functions.lowerCase(str2));
        Set set = (Set) this.attributes.get(valueOf);
        if (set == null || !set.contains(attributeKey)) {
            if (((java.util.Map) this.enforcedAttributes.get(valueOf)) != null) {
                Attributes enforcedAttributes = getEnforcedAttributes(str);
                if (enforcedAttributes.indexOfKeyIgnoreCase(str2) != -1) {
                    return enforcedAttributes.getIgnoreCase(str2).equals(Attributes.checkNotNull(attribute.val));
                }
            }
            return !str.equals(":all") && isSafeAttribute(":all", element, attribute);
        }
        HashMap hashMap = this.protocols;
        if (!hashMap.containsKey(valueOf)) {
            return true;
        }
        java.util.Map map = (java.util.Map) hashMap.get(valueOf);
        if (!map.containsKey(attributeKey)) {
            return true;
        }
        Set set2 = (Set) map.get(attributeKey);
        String absUrl = element.absUrl(str2);
        if (absUrl.length() == 0) {
            absUrl = Attributes.checkNotNull(attribute.val);
        }
        attribute.setValue(absUrl);
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String str3 = ((Protocol) it.next()).value;
            if (!str3.equals("#")) {
                if (Functions.lowerCase(absUrl).startsWith(str3.concat(":"))) {
                    return true;
                }
            } else if (absUrl.startsWith("#") && !absUrl.matches(".*\\s.*")) {
                return true;
            }
        }
        return false;
    }
}
