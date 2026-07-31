package org.koin.compose;

import android.content.pm.PackageManager;
import android.webkit.CookieManager;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.HexExtensionsKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.PackageManagerWrapperKt;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceReaderKt;
import org.koin.core.Koin;
import org.koin.core.context.GlobalContext;
import org.koin.core.registry.ScopeRegistry;
import org.schabi.newpipe.App;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.local.subscription.workers.SubscriptionData;
import org.schabi.newpipe.local.subscription.workers.SubscriptionItem$$serializer;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.views.player.PlayerFastSeekOverlay;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinApplicationKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinApplicationKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z = true;
        boolean z2 = false;
        switch (this.$r8$classId) {
            case 0:
                Koin koin = GlobalContext._koin;
                if (koin != null) {
                    return koin;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return null;
            case 1:
                return ResourceEnvironmentKt.DefaultComposeEnvironment;
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ResourceReaderKt.LocalResourceReader;
                return DefaultAndroidResourceReader.INSTANCE;
            case 3:
                return "";
            case 4:
                Koin koin2 = GlobalContext._koin;
                if (koin2 != null) {
                    return ((ScopeRegistry) koin2.scopeRegistry).rootScope;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return null;
            case 5:
                throw new IllegalStateException("should not be used in favor of LocalKoinScopeContext");
            case 6:
                throw new IllegalStateException("should not be used in favor of getKoin()");
            case 7:
                Koin koin3 = GlobalContext._koin;
                if (koin3 != null) {
                    return new ComposeContextWrapper(((ScopeRegistry) koin3.scopeRegistry).rootScope, new KoinApplicationKt$$ExternalSyntheticLambda0(9));
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return null;
            case 8:
                Koin koin4 = GlobalContext._koin;
                if (koin4 != null) {
                    return new ComposeContextWrapper(koin4, new KoinApplicationKt$$ExternalSyntheticLambda0(10));
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return null;
            case 9:
                Koin koin5 = GlobalContext._koin;
                if (koin5 != null) {
                    return ((ScopeRegistry) koin5.scopeRegistry).rootScope;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return null;
            case 10:
                Koin koin6 = GlobalContext._koin;
                if (koin6 != null) {
                    return koin6;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return null;
            case 11:
                SubscriptionData.Companion companion = SubscriptionData.Companion;
                return new ArrayListSerializer(SubscriptionItem$$serializer.INSTANCE);
            case 12:
                Map mapOf = MapsKt__MapsKt.mapOf(new Pair(HexExtensionsKt.hexToByteArray$default(), 1));
                App.Companion.getClass();
                App companion2 = App.Companion.getInstance();
                try {
                    z2 = PackageManagerWrapperKt.hasSignatures(companion2.getPackageManager(), companion2.getPackageName(), mapOf);
                } catch (PackageManager.NameNotFoundException e) {
                    ErrorUtil.Companion companion3 = ErrorUtil.Companion;
                    ErrorInfo errorInfo = new ErrorInfo(e, UserAction.CHECK_FOR_NEW_APP_VERSION, "Could not find package info", (Integer) null, 24);
                    companion3.getClass();
                    ErrorUtil.Companion.createNotification(companion2, errorInfo);
                }
                return Boolean.valueOf(z2);
            case 13:
                boolean z3 = DeviceUtils.SAMSUNG;
                try {
                    CookieManager.getInstance();
                } catch (Throwable unused) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                PlayerFastSeekOverlay.Companion companion4 = PlayerFastSeekOverlay.Companion;
                return 0;
        }
    }
}
