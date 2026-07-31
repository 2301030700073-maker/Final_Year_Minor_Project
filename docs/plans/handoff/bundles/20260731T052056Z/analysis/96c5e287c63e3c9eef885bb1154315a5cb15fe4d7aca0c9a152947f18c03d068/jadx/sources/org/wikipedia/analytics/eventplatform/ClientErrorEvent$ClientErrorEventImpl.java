package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ClientErrorEvent$ClientErrorEventImpl extends Event {
    public static final Companion Companion = new Companion();
    public final String errorClass;
    public final String errorContext;
    public final ClientErrorEvent$Http http;
    public final String message;
    public final String stackTrace;
    public final String url;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ClientErrorEvent$ClientErrorEventImpl$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ClientErrorEvent$ClientErrorEventImpl(int i, Event.Meta meta, String str, String str2, String str3, String str4, ClientErrorEvent$Http clientErrorEvent$Http, String str5) {
        super(i, meta);
        if (2 != (i & 2)) {
            TuplesKt.throwMissingFieldException(i, 2, ClientErrorEvent$ClientErrorEventImpl$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.message = str;
        if ((i & 4) == 0) {
            this.errorClass = null;
        } else {
            this.errorClass = str2;
        }
        if ((i & 8) == 0) {
            this.errorContext = null;
        } else {
            this.errorContext = str3;
        }
        if ((i & 16) == 0) {
            this.stackTrace = null;
        } else {
            this.stackTrace = str4;
        }
        if ((i & 32) == 0) {
            this.http = null;
        } else {
            this.http = clientErrorEvent$Http;
        }
        if ((i & 64) == 0) {
            this.url = null;
        } else {
            this.url = str5;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientErrorEvent$ClientErrorEventImpl(String str, String str2, String str3, ClientErrorEvent$Http clientErrorEvent$Http, String str4, int i) {
        super("mediawiki.client.error");
        str3 = (i & 8) != 0 ? null : str3;
        clientErrorEvent$Http = (i & 16) != 0 ? null : clientErrorEvent$Http;
        str4 = (i & 32) != 0 ? null : str4;
        this.message = str;
        this.errorClass = str2;
        this.errorContext = null;
        this.stackTrace = str3;
        this.http = clientErrorEvent$Http;
        this.url = str4;
    }
}
