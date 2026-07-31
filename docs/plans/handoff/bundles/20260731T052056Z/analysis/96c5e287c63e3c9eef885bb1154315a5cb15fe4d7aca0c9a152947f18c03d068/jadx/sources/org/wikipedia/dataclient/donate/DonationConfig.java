package org.wikipedia.dataclient.donate;

import coil3.util.ContextsKt;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DonationConfig {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List countryCodeEmailOptInRequired;
    public final List countryCodeGooglePayEnabled;
    public final Map currencyAmountPresets;
    public final Map currencyMaximumDonation;
    public final Map currencyMinimumDonation;
    public final Map currencyTransactionFees;
    public final int version;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DonationConfig$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(12)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(13)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(14)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(15)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(16)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(17))};
    }

    public /* synthetic */ DonationConfig(int i, int i2, Map map, Map map2, Map map3, Map map4, List list, List list2) {
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, DonationConfig$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.version = i2;
        int i3 = i & 2;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (i3 == 0) {
            this.currencyMinimumDonation = emptyMap;
        } else {
            this.currencyMinimumDonation = map;
        }
        if ((i & 4) == 0) {
            this.currencyMaximumDonation = emptyMap;
        } else {
            this.currencyMaximumDonation = map2;
        }
        if ((i & 8) == 0) {
            this.currencyAmountPresets = emptyMap;
        } else {
            this.currencyAmountPresets = map3;
        }
        if ((i & 16) == 0) {
            this.currencyTransactionFees = emptyMap;
        } else {
            this.currencyTransactionFees = map4;
        }
        int i4 = i & 32;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i4 == 0) {
            this.countryCodeEmailOptInRequired = emptyList;
        } else {
            this.countryCodeEmailOptInRequired = list;
        }
        if ((i & 64) == 0) {
            this.countryCodeGooglePayEnabled = emptyList;
        } else {
            this.countryCodeGooglePayEnabled = list2;
        }
    }
}
