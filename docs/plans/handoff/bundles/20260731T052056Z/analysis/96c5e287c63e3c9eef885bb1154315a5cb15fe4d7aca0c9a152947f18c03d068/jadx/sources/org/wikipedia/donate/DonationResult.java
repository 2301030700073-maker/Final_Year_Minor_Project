package org.wikipedia.donate;

import androidx.recyclerview.widget.RecyclerView;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DonationResult {
    public static final Companion Companion = new Companion();
    public final float amount;
    public final String currency;
    public final String dateTime;
    public final boolean fromWeb;
    public final boolean recurring;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DonationResult$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DonationResult(int i, String str, boolean z, float f, String str2, boolean z2) {
        if ((i & 1) == 0) {
            this.dateTime = "";
        } else {
            this.dateTime = str;
        }
        if ((i & 2) == 0) {
            this.fromWeb = false;
        } else {
            this.fromWeb = z;
        }
        if ((i & 4) == 0) {
            this.amount = RecyclerView.DECELERATION_RATE;
        } else {
            this.amount = f;
        }
        if ((i & 8) == 0) {
            this.currency = "";
        } else {
            this.currency = str2;
        }
        if ((i & 16) == 0) {
            this.recurring = false;
        } else {
            this.recurring = z2;
        }
    }

    public DonationResult(String str, float f, String str2, boolean z) {
        this.dateTime = str;
        this.fromWeb = true;
        this.amount = f;
        this.currency = str2;
        this.recurring = z;
    }
}
