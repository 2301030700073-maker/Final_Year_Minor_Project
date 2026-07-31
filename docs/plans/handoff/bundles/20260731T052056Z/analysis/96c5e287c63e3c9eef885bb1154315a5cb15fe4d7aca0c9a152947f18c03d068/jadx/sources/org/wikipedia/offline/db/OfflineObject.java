package org.wikipedia.offline.db;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OfflineObject {
    public final int id;
    public final String lang;
    public final String path;
    public final int status;
    public final String url;
    public String usedByStr;

    public OfflineObject(int i, int i2, String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        this.id = i;
        this.url = str;
        this.lang = str2;
        this.path = str3;
        this.status = i2;
        this.usedByStr = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OfflineObject)) {
            return false;
        }
        OfflineObject offlineObject = (OfflineObject) obj;
        return this.id == offlineObject.id && Intrinsics.areEqual(this.url, offlineObject.url) && Intrinsics.areEqual(this.lang, offlineObject.lang) && Intrinsics.areEqual(this.path, offlineObject.path) && this.status == offlineObject.status && Intrinsics.areEqual(this.usedByStr, offlineObject.usedByStr);
    }

    public final ArrayList getUsedBy() {
        List split$default = StringsKt.split$default(this.usedByStr, new char[]{'|'});
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Long.valueOf(Long.parseLong((String) it.next())));
        }
        return arrayList2;
    }

    public final int hashCode() {
        return this.usedByStr.hashCode() + ((Animation.CC.m(Animation.CC.m(Animation.CC.m(this.id * 31, 31, this.url), 31, this.lang), 31, this.path) + this.status) * 31);
    }

    public final String toString() {
        String str = this.usedByStr;
        StringBuilder sb = new StringBuilder("OfflineObject(id=");
        sb.append(this.id);
        sb.append(", url=");
        sb.append(this.url);
        sb.append(", lang=");
        Modifier.CC.m(sb, this.lang, ", path=", this.path, ", status=");
        sb.append(this.status);
        sb.append(", usedByStr=");
        sb.append(str);
        sb.append(")");
        return sb.toString();
    }

    public final void updateUsedBy(Set set) {
        this.usedByStr = Animation.CC.m("|", CollectionsKt.joinToString$default(set, "|", null, null, null, 62), "|");
    }
}
