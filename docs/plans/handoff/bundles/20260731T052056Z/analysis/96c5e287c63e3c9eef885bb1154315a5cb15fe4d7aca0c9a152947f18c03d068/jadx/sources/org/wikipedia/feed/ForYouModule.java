package org.wikipedia.feed;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class ForYouModule {
    public static final Companion Companion = new Companion();
    public static final Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(16));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) ForYouModule.$cachedSerializer$delegate.getValue();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Games extends ForYouModule {
        public final int age;
        public final List cards;
        public final int index;
        public final boolean isLoading;

        public Games(int i, int i2, List list, boolean z) {
            this.age = i;
            this.index = i2;
            this.cards = list;
            this.isLoading = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Games)) {
                return false;
            }
            Games games = (Games) obj;
            return this.age == games.age && this.index == games.index && this.cards.equals(games.cards) && this.isLoading == games.isLoading;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return Modifier.CC.m(((this.age * 31) + this.index) * 31, 31, this.cards) + (this.isLoading ? 1231 : 1237);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "GAMES";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "Games(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(", isLoading=");
            m.append(this.isLoading);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            return new Games(this.age, this.index, arrayList, this.isLoading);
        }
    }

    public abstract int getAge();

    public abstract List getCards();

    public abstract String moduleKey();

    public abstract ForYouModule withCards(ArrayList arrayList);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class BasedOnInterest extends ForYouModule {
        public final int age;
        public final List cards;
        public final int index;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(17))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ForYouModule$BasedOnInterest$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ BasedOnInterest(int i, int i2, int i3, List list) {
            if (7 != (i & 7)) {
                TuplesKt.throwMissingFieldException(i, 7, ForYouModule$BasedOnInterest$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.age = i2;
            this.index = i3;
            this.cards = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BasedOnInterest)) {
                return false;
            }
            BasedOnInterest basedOnInterest = (BasedOnInterest) obj;
            return this.age == basedOnInterest.age && this.index == basedOnInterest.index && Intrinsics.areEqual(this.cards, basedOnInterest.cards);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return this.cards.hashCode() + (((this.age * 31) + this.index) * 31);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "BASED_ON_INTEREST";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "BasedOnInterest(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            return new BasedOnInterest(this.age, this.index, arrayList);
        }

        public BasedOnInterest(int i, int i2, List list) {
            this.age = i;
            this.index = i2;
            this.cards = list;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class BecauseYouRead extends ForYouModule {
        public final int age;
        public final List cards;
        public final int index;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(18))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ForYouModule$BecauseYouRead$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ BecauseYouRead(int i, int i2, int i3, List list) {
            if (7 != (i & 7)) {
                TuplesKt.throwMissingFieldException(i, 7, ForYouModule$BecauseYouRead$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.age = i2;
            this.index = i3;
            this.cards = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BecauseYouRead)) {
                return false;
            }
            BecauseYouRead becauseYouRead = (BecauseYouRead) obj;
            return this.age == becauseYouRead.age && this.index == becauseYouRead.index && Intrinsics.areEqual(this.cards, becauseYouRead.cards);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return this.cards.hashCode() + (((this.age * 31) + this.index) * 31);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "BECAUSE_YOU_READ";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "BecauseYouRead(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            return new BecauseYouRead(this.age, this.index, arrayList);
        }

        public BecauseYouRead(int i, int i2, List list) {
            this.age = i;
            this.index = i2;
            this.cards = list;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ContinueReading extends ForYouModule {
        public final int age;
        public final List cards;
        public final int index;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(19))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ForYouModule$ContinueReading$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ContinueReading(int i, int i2, int i3, List list) {
            if (7 != (i & 7)) {
                TuplesKt.throwMissingFieldException(i, 7, ForYouModule$ContinueReading$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.age = i2;
            this.index = i3;
            this.cards = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ContinueReading)) {
                return false;
            }
            ContinueReading continueReading = (ContinueReading) obj;
            return this.age == continueReading.age && this.index == continueReading.index && Intrinsics.areEqual(this.cards, continueReading.cards);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return this.cards.hashCode() + (((this.age * 31) + this.index) * 31);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "CONTINUE_READING";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "ContinueReading(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            return new ContinueReading(this.age, this.index, arrayList);
        }

        public ContinueReading(int i, int i2, List list) {
            list.getClass();
            this.age = i;
            this.index = i2;
            this.cards = list;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Random extends ForYouModule {
        public final int age;
        public final List cards;
        public final int index;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(23))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ForYouModule$Random$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Random(int i, int i2, int i3, List list) {
            if (7 != (i & 7)) {
                TuplesKt.throwMissingFieldException(i, 7, ForYouModule$Random$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.age = i2;
            this.index = i3;
            this.cards = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Random)) {
                return false;
            }
            Random random = (Random) obj;
            return this.age == random.age && this.index == random.index && Intrinsics.areEqual(this.cards, random.cards);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return this.cards.hashCode() + (((this.age * 31) + this.index) * 31);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "RANDOM";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "Random(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            return new Random(this.age, this.index, arrayList);
        }

        public Random(int i, int i2, List list) {
            this.age = i;
            this.index = i2;
            this.cards = list;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class PlacesOfInterest extends ForYouModule {
        public final int age;
        public final List cards;
        public final boolean hasLocationPermission;
        public final int index;
        public final boolean isLoading;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(22)), null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ForYouModule$PlacesOfInterest$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ PlacesOfInterest(int i, int i2, int i3, List list, boolean z, boolean z2) {
            if (15 != (i & 15)) {
                TuplesKt.throwMissingFieldException(i, 15, ForYouModule$PlacesOfInterest$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.age = i2;
            this.index = i3;
            this.cards = list;
            this.hasLocationPermission = z;
            if ((i & 16) == 0) {
                this.isLoading = false;
            } else {
                this.isLoading = z2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlacesOfInterest)) {
                return false;
            }
            PlacesOfInterest placesOfInterest = (PlacesOfInterest) obj;
            return this.age == placesOfInterest.age && this.index == placesOfInterest.index && Intrinsics.areEqual(this.cards, placesOfInterest.cards) && this.hasLocationPermission == placesOfInterest.hasLocationPermission && this.isLoading == placesOfInterest.isLoading;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return ((Modifier.CC.m(((this.age * 31) + this.index) * 31, 31, this.cards) + (this.hasLocationPermission ? 1231 : 1237)) * 31) + (this.isLoading ? 1231 : 1237);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "PLACES_OF_INTEREST";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "PlacesOfInterest(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(", hasLocationPermission=");
            m.append(this.hasLocationPermission);
            m.append(", isLoading=");
            m.append(this.isLoading);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            return new PlacesOfInterest(this.age, this.index, arrayList, this.hasLocationPermission, this.isLoading);
        }

        public PlacesOfInterest(int i, int i2, List list, boolean z, boolean z2) {
            this.age = i;
            this.index = i2;
            this.cards = list;
            this.hasLocationPermission = z;
            this.isLoading = z2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Discover extends ForYouModule {
        public static final Lazy[] $childSerializers;
        public static final Companion Companion = new Companion();
        public final int age;
        public final List cards;
        public final int index;
        public final boolean isEnabled;
        public final boolean isLoading;
        public final RecommendedReadingListUpdateFrequency updateFrequency;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ForYouModule$Discover$$serializer.INSTANCE;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            $childSerializers = new Lazy[]{null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(20)), null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(21))};
        }

        public /* synthetic */ Discover(int i, int i2, int i3, List list, boolean z, boolean z2, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency) {
            if (15 != (i & 15)) {
                TuplesKt.throwMissingFieldException(i, 15, ForYouModule$Discover$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.age = i2;
            this.index = i3;
            this.cards = list;
            this.isEnabled = z;
            if ((i & 16) == 0) {
                this.isLoading = false;
            } else {
                this.isLoading = z2;
            }
            if ((i & 32) == 0) {
                this.updateFrequency = RecommendedReadingListUpdateFrequency.DAILY;
            } else {
                this.updateFrequency = recommendedReadingListUpdateFrequency;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Discover)) {
                return false;
            }
            Discover discover = (Discover) obj;
            return this.age == discover.age && this.index == discover.index && Intrinsics.areEqual(this.cards, discover.cards) && this.isEnabled == discover.isEnabled && this.isLoading == discover.isLoading && this.updateFrequency == discover.updateFrequency;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final int getAge() {
            return this.age;
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final List getCards() {
            return this.cards;
        }

        public final int hashCode() {
            return this.updateFrequency.hashCode() + ((((Modifier.CC.m(((this.age * 31) + this.index) * 31, 31, this.cards) + (this.isEnabled ? 1231 : 1237)) * 31) + (this.isLoading ? 1231 : 1237)) * 31);
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final String moduleKey() {
            return "DISCOVER";
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.age, this.index, "Discover(age=", ", index=", ", cards=");
            m.append(this.cards);
            m.append(", isEnabled=");
            m.append(this.isEnabled);
            m.append(", isLoading=");
            m.append(this.isLoading);
            m.append(", updateFrequency=");
            m.append(this.updateFrequency);
            m.append(")");
            return m.toString();
        }

        @Override // org.wikipedia.feed.ForYouModule
        public final ForYouModule withCards(ArrayList arrayList) {
            RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = this.updateFrequency;
            recommendedReadingListUpdateFrequency.getClass();
            return new Discover(this.age, this.index, arrayList, this.isEnabled, this.isLoading, recommendedReadingListUpdateFrequency);
        }

        public Discover(int i, int i2, List list, boolean z, boolean z2, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency) {
            recommendedReadingListUpdateFrequency.getClass();
            this.age = i;
            this.index = i2;
            this.cards = list;
            this.isEnabled = z;
            this.isLoading = z2;
            this.updateFrequency = recommendedReadingListUpdateFrequency;
        }

        public /* synthetic */ Discover(List list, boolean z, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency, int i) {
            this(0, 0, list, z, (i & 16) == 0, (i & 32) != 0 ? RecommendedReadingListUpdateFrequency.DAILY : recommendedReadingListUpdateFrequency);
        }
    }
}
