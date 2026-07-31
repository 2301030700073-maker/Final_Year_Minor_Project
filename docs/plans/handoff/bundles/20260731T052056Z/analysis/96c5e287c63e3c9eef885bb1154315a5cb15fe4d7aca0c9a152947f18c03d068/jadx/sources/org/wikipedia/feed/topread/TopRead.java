package org.wikipedia.feed.topread;

import android.os.Parcel;
import android.os.Parcelable;
import coil3.util.ContextsKt;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class TopRead implements Parcelable {
    public final List articles;
    public final String date;
    public final SynchronizedLazyImpl localDate$delegate;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<TopRead> CREATOR = new DefaultStyle.AnonymousClass1(26);
    public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(9))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return TopRead$$serializer.INSTANCE;
        }
    }

    public TopRead(int i, String str, List list) {
        this.date = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.articles = EmptyList.INSTANCE;
        } else {
            this.articles = list;
        }
        final int i2 = 1;
        this.localDate$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.feed.topread.TopRead$$ExternalSyntheticLambda1
            public final /* synthetic */ TopRead f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                TopRead topRead = this.f$0;
                switch (i3) {
                }
                return LocalDate.now();
            }
        });
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.date);
        List list = this.articles;
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable((Parcelable) it.next(), i);
        }
    }

    public TopRead(String str, ArrayList arrayList) {
        str.getClass();
        this.date = str;
        this.articles = arrayList;
        final int i = 0;
        this.localDate$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.feed.topread.TopRead$$ExternalSyntheticLambda1
            public final /* synthetic */ TopRead f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                TopRead topRead = this.f$0;
                switch (i3) {
                }
                return LocalDate.now();
            }
        });
    }
}
