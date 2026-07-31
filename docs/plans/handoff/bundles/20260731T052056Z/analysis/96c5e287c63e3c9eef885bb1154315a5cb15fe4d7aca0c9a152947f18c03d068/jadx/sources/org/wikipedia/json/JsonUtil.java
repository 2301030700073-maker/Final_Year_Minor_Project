package org.wikipedia.json;

import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonUtil {
    public static final JsonImpl json;

    static {
        Json.Default r0 = Json.Default;
        r0.getClass();
        JsonConfiguration jsonConfiguration = r0.configuration;
        boolean z = jsonConfiguration.explicitNulls;
        String str = jsonConfiguration.prettyPrintIndent;
        ClassDiscriminatorMode classDiscriminatorMode = jsonConfiguration.classDiscriminatorMode;
        boolean z2 = jsonConfiguration.useAlternativeNames;
        LoginClient loginClient = r0.serializersModule;
        boolean z3 = jsonConfiguration.exceptionsWithDebugInfo;
        if (!str.equals("    ")) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Indent should not be specified when default printing mode is used");
            return;
        }
        JsonConfiguration jsonConfiguration2 = new JsonConfiguration(true, z, str, true, "$schema", z2, classDiscriminatorMode, z3);
        loginClient.getClass();
        json = new JsonImpl(jsonConfiguration2, loginClient);
    }
}
