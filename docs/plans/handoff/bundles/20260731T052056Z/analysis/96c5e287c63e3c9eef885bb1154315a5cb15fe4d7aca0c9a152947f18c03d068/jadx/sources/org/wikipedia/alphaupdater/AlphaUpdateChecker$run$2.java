package org.wikipedia.alphaupdater;

import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;
import org.wikipedia.R;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.feed.ForYouCollectionSaved;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AlphaUpdateChecker$run$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Ref$ObjectRef $hashString;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AlphaUpdateChecker$run$2(Ref$ObjectRef ref$ObjectRef, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$hashString = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Ref$ObjectRef ref$ObjectRef = this.$hashString;
        switch (i) {
            case 0:
                return new AlphaUpdateChecker$run$2(ref$ObjectRef, continuation, 0);
            case 1:
                return new AlphaUpdateChecker$run$2(ref$ObjectRef, continuation, 1);
            default:
                return new AlphaUpdateChecker$run$2(ref$ObjectRef, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((AlphaUpdateChecker$run$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((AlphaUpdateChecker$run$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((AlphaUpdateChecker$run$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = null;
        obj2 = null;
        r3 = null;
        String encodeToString = null;
        Unit unit = Unit.INSTANCE;
        Ref$ObjectRef ref$ObjectRef = this.$hashString;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                try {
                    Request.Builder builder = new Request.Builder(0);
                    builder.url("https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/rev-hash.txt");
                    Request request = new Request(builder);
                    OkHttpClient okHttpClient = OkHttpConnectionFactory.client;
                    okHttpClient.getClass();
                    Response execute = new RealCall(okHttpClient, request).execute();
                    try {
                        ref$ObjectRef.element = execute.body.string();
                        execute.close();
                    } finally {
                    }
                } catch (IOException unused) {
                }
                return unit;
            case 1:
                ResultKt.throwOnFailure(obj);
                JsonImpl jsonImpl = JsonUtil.json;
                Prefs prefs = Prefs.INSTANCE;
                String string = PrefsIoUtil.getString(R.string.preference_key_home_for_you_modules_today, "");
                string.getClass();
                if (string.length() != 0) {
                    try {
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        obj2 = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(ForYouCollectionSaved.Companion.serializer()));
                    } catch (Exception e) {
                        L.w(e);
                    }
                }
                obj2.getClass();
                ref$ObjectRef.element = obj2;
                return unit;
            default:
                ResultKt.throwOnFailure(obj);
                Prefs prefs2 = Prefs.INSTANCE;
                JsonImpl jsonImpl3 = JsonUtil.json;
                Object obj3 = ref$ObjectRef.element;
                if (obj3 != null) {
                    try {
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        encodeToString = jsonImpl4.encodeToString(ForYouCollectionSaved.Companion.serializer(), obj3);
                    } catch (Exception e2) {
                        L.w(e2);
                    }
                }
                PrefsIoUtil.setString(R.string.preference_key_home_for_you_modules_today, encodeToString != null ? encodeToString : "");
                return unit;
        }
    }
}
