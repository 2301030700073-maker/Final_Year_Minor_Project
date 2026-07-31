package org.wikipedia.captcha;

import androidx.compose.animation.core.Animation;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.dataclient.mwapi.MwResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Captcha extends MwResponse {
    public final FancyCaptchaReload fancyCaptchaReload;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(29)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Captcha$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class FancyCaptchaReload {
        public static final Companion Companion = new Companion();
        public final String index;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Captcha$FancyCaptchaReload$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ FancyCaptchaReload(int i, String str) {
            if (1 == (i & 1)) {
                this.index = str;
            } else {
                TuplesKt.throwMissingFieldException(i, 1, Captcha$FancyCaptchaReload$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FancyCaptchaReload) && Intrinsics.areEqual(this.index, ((FancyCaptchaReload) obj).index);
        }

        public final int hashCode() {
            String str = this.index;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return Animation.CC.m("FancyCaptchaReload(index=", this.index, ")");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Captcha(int i, List list, String str, FancyCaptchaReload fancyCaptchaReload) {
        super(i, str, list);
        if (4 != (i & 4)) {
            TuplesKt.throwMissingFieldException(i, 4, Captcha$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.fancyCaptchaReload = fancyCaptchaReload;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Captcha) && Intrinsics.areEqual(this.fancyCaptchaReload, ((Captcha) obj).fancyCaptchaReload);
    }

    public final int hashCode() {
        return this.fancyCaptchaReload.hashCode();
    }

    public final String toString() {
        return "Captcha(fancyCaptchaReload=" + this.fancyCaptchaReload + ")";
    }
}
