package org.wikipedia.edit;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Edit extends MwPostResponse {
    public final Result edit;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(0)), null, null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Captcha {
        public static final Companion Companion = new Companion();
        public final String id;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Edit$Captcha$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Captcha(int i, String str) {
            if ((i & 1) == 0) {
                this.id = null;
            } else {
                this.id = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Edit$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Result {
        public static final Companion Companion = new Companion();
        public final Captcha captcha;
        public final String code;
        public final String info;
        public final long newRevId;
        public final String spamblacklist;
        public final String status;
        public final String warning;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Edit$Result$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Result(int i, Captcha captcha, String str, long j, String str2, String str3, String str4, String str5) {
            if ((i & 1) == 0) {
                this.captcha = null;
            } else {
                this.captcha = captcha;
            }
            if ((i & 2) == 0) {
                this.status = null;
            } else {
                this.status = str;
            }
            if ((i & 4) == 0) {
                this.newRevId = 0L;
            } else {
                this.newRevId = j;
            }
            if ((i & 8) == 0) {
                this.code = null;
            } else {
                this.code = str2;
            }
            if ((i & 16) == 0) {
                this.info = null;
            } else {
                this.info = str3;
            }
            if ((i & 32) == 0) {
                this.warning = null;
            } else {
                this.warning = str4;
            }
            if ((i & 64) == 0) {
                this.spamblacklist = null;
            } else {
                this.spamblacklist = str5;
            }
        }
    }

    public /* synthetic */ Edit(int i, List list, String str, MwQueryPage mwQueryPage, String str2, int i2, Result result) {
        super(i, list, str, mwQueryPage, str2, i2);
        if ((i & 32) == 0) {
            this.edit = null;
        } else {
            this.edit = result;
        }
    }
}
