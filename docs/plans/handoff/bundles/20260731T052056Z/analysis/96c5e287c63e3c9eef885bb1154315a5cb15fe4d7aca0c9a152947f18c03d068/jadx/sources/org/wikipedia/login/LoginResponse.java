package org.wikipedia.login;

import coil3.util.ContextsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwResponse;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class LoginResponse extends MwResponse {
    public final ClientLogin clientLogin;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(20)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ClientLogin {
        public final String message;
        public final String messageCode;
        public final List requests;
        public final String status;
        public final String userName;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(21)), null, null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return LoginResponse$ClientLogin$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ClientLogin(int i, String str, String str2, String str3, String str4, List list) {
            if ((i & 1) == 0) {
                this.status = null;
            } else {
                this.status = str;
            }
            if ((i & 2) == 0) {
                this.requests = null;
            } else {
                this.requests = list;
            }
            if ((i & 4) == 0) {
                this.message = null;
            } else {
                this.message = str2;
            }
            if ((i & 8) == 0) {
                this.messageCode = null;
            } else {
                this.messageCode = str3;
            }
            if ((i & 16) == 0) {
                this.userName = null;
            } else {
                this.userName = str4;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return LoginResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Request {
        public static final Companion Companion = new Companion();
        public final String id;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return LoginResponse$Request$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Request(int i, String str) {
            if ((i & 1) == 0) {
                this.id = null;
            } else {
                this.id = str;
            }
        }
    }

    public /* synthetic */ LoginResponse(int i, List list, String str, ClientLogin clientLogin) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.clientLogin = null;
        } else {
            this.clientLogin = clientLogin;
        }
    }

    public final LoginResult toLoginResult(String str, WikiSite wikiSite) {
        String str2;
        WikiSite wikiSite2;
        wikiSite.getClass();
        str.getClass();
        ClientLogin clientLogin = this.clientLogin;
        if (clientLogin == null) {
            return null;
        }
        String str3 = clientLogin.message;
        String str4 = clientLogin.status;
        if ("UI".equals(str4)) {
            List list = clientLogin.requests;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str5 = ((Request) it.next()).id;
                    if (StringsKt__StringsJVMKt.endsWith(str5 == null ? "" : str5, "TOTPAuthenticationRequest", false)) {
                        String str6 = clientLogin.userName;
                        String str7 = clientLogin.message;
                        str4.getClass();
                        return new LoginOATHResult(wikiSite, str4, str6, str, str7, null, 224);
                    }
                    String str8 = str;
                    String str9 = str5;
                    WikiSite wikiSite3 = wikiSite;
                    if (StringsKt__StringsJVMKt.endsWith(str9 == null ? "" : str9, "EmailAuthAuthenticationRequest", false)) {
                        String str10 = clientLogin.userName;
                        String str11 = clientLogin.message;
                        str4.getClass();
                        return new LoginEmailAuthResult(wikiSite3, str4, str10, str8, str11, null, 224);
                    }
                    if (StringsKt__StringsJVMKt.endsWith(str9 == null ? "" : str9, "PasswordAuthenticationRequest", false)) {
                        String str12 = clientLogin.userName;
                        String str13 = clientLogin.message;
                        str4.getClass();
                        return new LoginResetPasswordResult(wikiSite3, str4, str12, str8, str13, null, 224);
                    }
                    if (str9 == null) {
                        str9 = "";
                    }
                    if (StringsKt__StringsJVMKt.endsWith(str9, "TwoFactorModuleSelectAuthenticationRequest", false)) {
                        String str14 = clientLogin.userName;
                        String str15 = clientLogin.message;
                        str4.getClass();
                        return new LoginModuleSelectResult(wikiSite3, str4, str14, str8, str15, null, 224);
                    }
                    wikiSite = wikiSite3;
                    str = str8;
                }
            }
            str2 = str;
            wikiSite2 = wikiSite;
        } else {
            str2 = str;
            wikiSite2 = wikiSite;
            if (!"PASS".equals(str4) && !"FAIL".equals(str4)) {
                str3 = "An unknown error occurred.";
            }
        }
        str4.getClass();
        return new LoginResult(wikiSite2, str4, clientLogin.userName, str2, str3, clientLogin.messageCode, 96);
    }
}
