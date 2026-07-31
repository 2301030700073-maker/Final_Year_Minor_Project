package org.wikipedia.analytics.eventplatform;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import okhttp3.Headers;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class MobileAppsEventWithTemp extends MobileAppsEvent {
    public final boolean temp;
    public static final Companion Companion = new Companion();
    public static final Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(27));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) MobileAppsEventWithTemp.$cachedSerializer$delegate.getValue();
        }
    }

    public /* synthetic */ MobileAppsEventWithTemp(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2) {
        super(i, meta, str, z, str2, str3);
        if ((i & 32) == 0) {
            this.temp = Headers.Companion.isTemporaryAccount();
        } else {
            this.temp = z2;
        }
    }

    public static final /* synthetic */ void write$Self(MobileAppsEventWithTemp mobileAppsEventWithTemp, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
        MobileAppsEvent.write$Self((MobileAppsEvent) mobileAppsEventWithTemp, uuidKt, serialDescriptor);
        uuidKt.encodeBooleanElement(serialDescriptor, 5, mobileAppsEventWithTemp.temp);
    }

    public MobileAppsEventWithTemp(String str) {
        super(str);
        this.temp = Headers.Companion.isTemporaryAccount();
    }
}
