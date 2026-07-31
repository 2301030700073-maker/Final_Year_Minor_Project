package org.wikipedia.login;

import coil3.util.ContextsKt;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptySet;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public class LoginResult {
    public Set groups;
    public final String message;
    public final String messageCode;
    public final String password;
    public final WikiSite site;
    public final String status;
    public int userId;
    public final String userName;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(22)), null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return LoginResult$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ LoginResult(int i, WikiSite wikiSite, String str, String str2, String str3, String str4, int i2, Set set, String str5) {
        if (31 != (i & 31)) {
            TuplesKt.throwMissingFieldException(i, 31, LoginResult$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.site = wikiSite;
        this.status = str;
        this.userName = str2;
        this.password = str3;
        this.message = str4;
        if ((i & 32) == 0) {
            this.userId = 0;
        } else {
            this.userId = i2;
        }
        if ((i & 64) == 0) {
            this.groups = EmptySet.INSTANCE;
        } else {
            this.groups = set;
        }
        if ((i & 128) == 0) {
            this.messageCode = null;
        } else {
            this.messageCode = str5;
        }
    }

    public LoginResult(WikiSite wikiSite, String str, String str2, String str3, String str4, String str5, int i) {
        str5 = (i & 128) != 0 ? null : str5;
        wikiSite.getClass();
        str.getClass();
        this.site = wikiSite;
        this.status = str;
        this.userName = str2;
        this.password = str3;
        this.message = str4;
        this.userId = 0;
        this.groups = EmptySet.INSTANCE;
        this.messageCode = str5;
    }
}
