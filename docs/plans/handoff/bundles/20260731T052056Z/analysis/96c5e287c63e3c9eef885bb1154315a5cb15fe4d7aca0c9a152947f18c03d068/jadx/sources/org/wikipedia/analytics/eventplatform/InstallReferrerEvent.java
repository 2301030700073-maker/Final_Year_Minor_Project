package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class InstallReferrerEvent extends MobileAppsEventWithTemp {
    public static final Companion Companion = new Companion();
    public final String campaignId;
    public final String referrerUrl;
    public final String utfCampaign;
    public final String utfMedium;
    public final String utfSource;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return InstallReferrerEvent$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ InstallReferrerEvent(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2, String str4, String str5, String str6, String str7, String str8) {
        super(i, meta, str, z, str2, str3, z2);
        if (1984 != (i & 1984)) {
            TuplesKt.throwMissingFieldException(i, 1984, InstallReferrerEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.referrerUrl = str4;
        this.campaignId = str5;
        this.utfMedium = str6;
        this.utfCampaign = str7;
        this.utfSource = str8;
    }
}
