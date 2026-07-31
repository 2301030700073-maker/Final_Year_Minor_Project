package org.wikimedia.testkitchen.context;

import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;
import j$.time.Instant;
import java.util.Collection;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class PerformerData {
    public Collection groups;
    public Integer id;
    public Boolean isLoggedIn;
    public Boolean isTemp;
    public String languageGroups;
    public String languagePrimary;
    public String name;
    public String pageviewId;
    public Instant registrationDt;
    public String sessionId;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(21)), null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return PerformerData$$serializer.INSTANCE;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PerformerData)) {
            return false;
        }
        PerformerData performerData = (PerformerData) obj;
        return Intrinsics.areEqual(this.id, performerData.id) && Intrinsics.areEqual(this.name, performerData.name) && Intrinsics.areEqual(this.isLoggedIn, performerData.isLoggedIn) && Intrinsics.areEqual(this.isTemp, performerData.isTemp) && Intrinsics.areEqual(this.sessionId, performerData.sessionId) && Intrinsics.areEqual(this.pageviewId, performerData.pageviewId) && Intrinsics.areEqual(this.groups, performerData.groups) && Intrinsics.areEqual(this.languageGroups, performerData.languageGroups) && Intrinsics.areEqual(this.languagePrimary, performerData.languagePrimary) && Intrinsics.areEqual(this.registrationDt, performerData.registrationDt);
    }

    public final int hashCode() {
        Integer num = this.id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.isLoggedIn;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isTemp;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str2 = this.sessionId;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.pageviewId;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Collection collection = this.groups;
        int hashCode7 = (hashCode6 + (collection == null ? 0 : collection.hashCode())) * 31;
        String str4 = this.languageGroups;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.languagePrimary;
        int hashCode9 = (hashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Instant instant = this.registrationDt;
        return hashCode9 + (instant != null ? instant.hashCode() : 0);
    }

    public final String toString() {
        Integer num = this.id;
        String str = this.name;
        Boolean bool = this.isLoggedIn;
        Boolean bool2 = this.isTemp;
        String str2 = this.sessionId;
        String str3 = this.pageviewId;
        Collection collection = this.groups;
        String str4 = this.languageGroups;
        String str5 = this.languagePrimary;
        Instant instant = this.registrationDt;
        StringBuilder sb = new StringBuilder("PerformerData(id=");
        sb.append(num);
        sb.append(", name=");
        sb.append(str);
        sb.append(", isLoggedIn=");
        sb.append(bool);
        sb.append(", isTemp=");
        sb.append(bool2);
        sb.append(", sessionId=");
        Modifier.CC.m(sb, str2, ", pageviewId=", str3, ", groups=");
        sb.append(collection);
        sb.append(", languageGroups=");
        sb.append(str4);
        sb.append(", languagePrimary=");
        sb.append(str5);
        sb.append(", registrationDt=");
        sb.append(instant);
        sb.append(")");
        return sb.toString();
    }
}
