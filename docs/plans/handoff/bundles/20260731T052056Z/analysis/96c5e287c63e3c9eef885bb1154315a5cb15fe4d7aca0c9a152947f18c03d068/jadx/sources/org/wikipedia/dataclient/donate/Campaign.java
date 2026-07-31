package org.wikipedia.dataclient.donate;

import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import j$.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.random.XorWowRandom;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Campaign {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final Map assets;
    public final List countries;
    public final LocalDateTime endDateTime;
    public final String id;
    public final Map platforms;
    public final LocalDateTime startDateTime;
    public final int version;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Campaign$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class PlatformParams {
        public static final Companion Companion = new Companion();

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Campaign$PlatformParams$$serializer.INSTANCE;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(8)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(9)), ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(10))};
    }

    public /* synthetic */ Campaign(int i, int i2, String str, LocalDateTime localDateTime, LocalDateTime localDateTime2, Map map, List list, Map map2) {
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, Campaign$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.version = i2;
        if ((i & 2) == 0) {
            this.id = "";
        } else {
            this.id = str;
        }
        if ((i & 4) == 0) {
            this.startDateTime = null;
        } else {
            this.startDateTime = localDateTime;
        }
        if ((i & 8) == 0) {
            this.endDateTime = null;
        } else {
            this.endDateTime = localDateTime2;
        }
        int i3 = i & 16;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (i3 == 0) {
            this.platforms = emptyMap;
        } else {
            this.platforms = map;
        }
        if ((i & 32) == 0) {
            this.countries = EmptyList.INSTANCE;
        } else {
            this.countries = list;
        }
        if ((i & 64) == 0) {
            this.assets = emptyMap;
        } else {
            this.assets = map2;
        }
    }

    public final Assets getAssetsForLang(String str) {
        str.getClass();
        List list = (List) this.assets.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        int i = 0;
        if (list.size() == 1) {
            return (Assets) list.get(0);
        }
        if (list.size() > 1) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Jsoup.getInstance();
            int hashCode = this.id.hashCode() + WikipediaApp.getAppInstallID().hashCode();
            float nextBits = new XorWowRandom(hashCode, hashCode >> 31).nextBits(24) / 1.6777216E7f;
            int size = list.size();
            float f = RecyclerView.DECELERATION_RATE;
            while (true) {
                if (i >= size) {
                    i = list.size() - 1;
                    break;
                }
                f += ((Assets) list.get(i)).weight;
                if (nextBits <= f) {
                    break;
                }
                i++;
            }
        }
        return (Assets) list.get(i);
    }

    public final String getIdForLang(String str) {
        str.getClass();
        Assets assetsForLang = getAssetsForLang(str);
        String str2 = this.id;
        if (assetsForLang == null) {
            return str2;
        }
        String str3 = assetsForLang.id;
        if (str3.length() == 0) {
            return str2;
        }
        return str2 + "_" + str3;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Action {
        public static final Companion Companion = new Companion();
        public final String title;
        public final String url;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Campaign$Action$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Action(int i, String str, String str2) {
            this.title = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.url = null;
            } else {
                this.url = str2;
            }
        }

        public Action(String str, String str2) {
            this.title = str;
            this.url = str2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Assets {
        public final Action[] actions;
        public final String footer;
        public final String id;
        public final String text;
        public final float weight;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(11))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Campaign$Assets$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Assets(int i, String str, float f, String str2, String str3, Action[] actionArr) {
            if ((i & 1) == 0) {
                this.id = "";
            } else {
                this.id = str;
            }
            if ((i & 2) == 0) {
                this.weight = 1.0f;
            } else {
                this.weight = f;
            }
            if ((i & 4) == 0) {
                this.text = "";
            } else {
                this.text = str2;
            }
            if ((i & 8) == 0) {
                this.footer = "";
            } else {
                this.footer = str3;
            }
            if ((i & 16) == 0) {
                this.actions = new Action[0];
            } else {
                this.actions = actionArr;
            }
        }

        public Assets(String str, float f, String str2, String str3, Action[] actionArr) {
            str.getClass();
            actionArr.getClass();
            this.id = str;
            this.weight = f;
            this.text = str2;
            this.footer = str3;
            this.actions = actionArr;
        }
    }
}
