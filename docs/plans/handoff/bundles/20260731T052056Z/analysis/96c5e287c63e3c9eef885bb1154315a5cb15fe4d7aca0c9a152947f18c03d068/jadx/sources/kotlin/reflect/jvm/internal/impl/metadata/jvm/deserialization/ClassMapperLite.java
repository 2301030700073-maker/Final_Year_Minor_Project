package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import coil3.util.ContextsKt;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ClassMapperLite {

    /* renamed from: kotlin, reason: collision with root package name */
    public static final String f88kotlin;
    public static final LinkedHashMap map;

    static {
        String str;
        String joinToString$default = CollectionsKt.joinToString$default(Room.listOf((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", null, null, null, 62);
        f88kotlin = joinToString$default;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listOf = Room.listOf((Object[]) new String[]{"Boolean", "Z", "Char", "C", "Byte", "B", "Short", "S", "Int", "I", "Float", "F", "Long", "J", "Double", "D"});
        int progressionLastElement = ContextsKt.getProgressionLastElement(0, listOf.size() - 1, 2);
        if (progressionLastElement >= 0) {
            int i = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                str = f88kotlin;
                sb.append(str);
                sb.append('/');
                sb.append((String) listOf.get(i));
                int i2 = i + 1;
                linkedHashMap.put(sb.toString(), listOf.get(i2));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append('/');
                linkedHashMap.put(Animation.CC.m(sb2, (String) listOf.get(i), "Array"), "[" + ((String) listOf.get(i2)));
                if (i == progressionLastElement) {
                    break;
                } else {
                    i += 2;
                }
            }
            joinToString$default = str;
        }
        linkedHashMap.put(joinToString$default + "/Unit", "V");
        map$lambda$0$add(linkedHashMap, "Any", "java/lang/Object");
        map$lambda$0$add(linkedHashMap, "Nothing", "java/lang/Void");
        map$lambda$0$add(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : Room.listOf((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum"})) {
            map$lambda$0$add(linkedHashMap, str2, "java/lang/" + str2);
        }
        for (String str3 : Room.listOf((Object[]) new String[]{"Iterator", "Collection", "List", "Set", "Map", "ListIterator"})) {
            map$lambda$0$add(linkedHashMap, Modifier.CC.m("collections/", str3), "java/util/" + str3);
            map$lambda$0$add(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        map$lambda$0$add(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        map$lambda$0$add(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        map$lambda$0$add(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        map$lambda$0$add(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i3 = 0; i3 < 23; i3++) {
            String m = Animation.CC.m(i3, "Function");
            StringBuilder sb3 = new StringBuilder();
            String str4 = f88kotlin;
            sb3.append(str4);
            sb3.append("/jvm/functions/Function");
            sb3.append(i3);
            map$lambda$0$add(linkedHashMap, m, sb3.toString());
            map$lambda$0$add(linkedHashMap, "reflect/KFunction" + i3, str4 + "/reflect/KFunction");
        }
        for (String str5 : Room.listOf((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum"})) {
            map$lambda$0$add(linkedHashMap, str5 + ".Companion", f88kotlin + "/jvm/internal/" + str5 + "CompanionObject");
        }
        map = linkedHashMap;
    }

    public static final void map$lambda$0$add(LinkedHashMap linkedHashMap, String str, String str2) {
        linkedHashMap.put(f88kotlin + '/' + str, "L" + str2 + ';');
    }

    public static final String mapClass(String str) {
        str.getClass();
        String str2 = (String) map.get(str);
        if (str2 != null) {
            return str2;
        }
        StringBuilder sb = new StringBuilder("L");
        String replace = str.replace('.', '$');
        replace.getClass();
        sb.append(replace);
        sb.append(';');
        return sb.toString();
    }
}
