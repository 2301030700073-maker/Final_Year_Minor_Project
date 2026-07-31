package org.schabi.newpipe.local.subscription.workers;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.Platform_commonKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionItem {
    public static final Companion Companion = new Companion();
    public final String name;
    public final int serviceId;
    public final String url;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Companion {
        public final KSerializer serializer() {
            return SubscriptionItem$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SubscriptionItem(int i, int i2, String str, String str2) {
        if (7 != (i & 7)) {
            Platform_commonKt.throwMissingFieldException(i, 7, SubscriptionItem$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.serviceId = i2;
        this.url = str;
        this.name = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubscriptionItem)) {
            return false;
        }
        SubscriptionItem subscriptionItem = (SubscriptionItem) obj;
        return this.serviceId == subscriptionItem.serviceId && Intrinsics.areEqual(this.url, subscriptionItem.url) && Intrinsics.areEqual(this.name, subscriptionItem.name);
    }

    public final int hashCode() {
        return this.name.hashCode() + Modifier.CC.m(this.serviceId * 31, 31, this.url);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SubscriptionItem(serviceId=");
        sb.append(this.serviceId);
        sb.append(", url=");
        sb.append(this.url);
        sb.append(", name=");
        return Modifier.CC.m(sb, this.name, ")");
    }

    public SubscriptionItem(String str, int i, String str2) {
        this.serviceId = i;
        this.url = str;
        this.name = str2;
    }
}
