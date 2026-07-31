package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class CreateAccountResponse extends MwResponse {
    public final Result createaccount;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(24)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return CreateAccountResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Result {
        public static final Companion Companion = new Companion();
        public final String message;
        public final String messageCode;
        public final String status;
        public final String username;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return CreateAccountResponse$Result$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Result(int i, String str, String str2, String str3, String str4) {
            if ((i & 1) == 0) {
                this.status = "";
            } else {
                this.status = str;
            }
            if ((i & 2) == 0) {
                this.message = "";
            } else {
                this.message = str2;
            }
            if ((i & 4) == 0) {
                this.messageCode = "";
            } else {
                this.messageCode = str3;
            }
            if ((i & 8) == 0) {
                this.username = "";
            } else {
                this.username = str4;
            }
        }
    }

    public /* synthetic */ CreateAccountResponse(int i, List list, String str, Result result) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.createaccount = null;
        } else {
            this.createaccount = result;
        }
    }
}
