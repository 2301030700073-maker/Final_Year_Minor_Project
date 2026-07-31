package org.koin.core.scope;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.inputmethod.InputMethodManager;
import androidx.fragment.app.FragmentActivity;
import co.touchlab.kermit.Logger$Companion;
import co.touchlab.kermit.Severity;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.HexExtensionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.internal.Platform_commonKt;
import net.newpipe.app.platform.AndroidBuildInfo;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okio.FileSystem;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.acra.util.PackageManagerWrapperKt;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.registry.ScopeRegistry;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Scope$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Scope$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ArrayDeque arrayDeque;
        int lastIndexOf$default;
        Pair pair;
        Pair pair2;
        int i = this.$r8$classId;
        boolean z = false;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Scope scope = (Scope) obj;
                Logger logger = (Logger) scope._koin.logger;
                String str = "|- (-) Scope - id:'" + scope.id + '\'';
                logger.getClass();
                logger.log(Level.DEBUG, str);
                Iterator it = scope._callbacks.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    return null;
                }
                scope._callbacks.clear();
                scope._closed = true;
                ThreadLocal threadLocal = scope._parameterStack;
                if (threadLocal != null && (arrayDeque = (ArrayDeque) threadLocal.get()) != null) {
                    arrayDeque.clear();
                }
                scope._parameterStack = null;
                ((ScopeRegistry) scope._koin.scopeRegistry).deleteScope$koin_core(scope);
                return Unit.INSTANCE;
            case 1:
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj;
                return Integer.valueOf(Platform_commonKt.hashCodeImpl(serialDescriptorImpl, serialDescriptorImpl.typeParametersDescriptors));
            case 2:
                AndroidBuildInfo androidBuildInfo = (AndroidBuildInfo) obj;
                try {
                    z = PackageManagerWrapperKt.hasSignatures(androidBuildInfo.context.getPackageManager(), androidBuildInfo.context.getPackageName(), MapsKt__MapsKt.mapOf(new Pair(HexExtensionsKt.hexToByteArray$default(), 1)));
                } catch (PackageManager.NameNotFoundException e) {
                    Logger$Companion logger$Companion = Logger$Companion.Companion;
                    logger$Companion.getClass();
                    Severity severity = Severity.Error;
                    if (logger$Companion.config._minSeverity.compareTo(severity) <= 0) {
                        logger$Companion.processLog(severity, e, "Could not find package info");
                    }
                }
                return Boolean.valueOf(z);
            case 3:
                Http2Connection http2Connection = (Http2Connection) obj;
                http2Connection.getClass();
                try {
                    http2Connection.writer.ping(2, 0, false);
                } catch (IOException e2) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e2);
                }
                return Unit.INSTANCE;
            case 4:
                ResourceFileSystem resourceFileSystem = (ResourceFileSystem) obj;
                ClassLoader classLoader = resourceFileSystem.classLoader;
                FileSystem fileSystem = resourceFileSystem.systemFileSystem;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList<URL> list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (URL url : list) {
                    url.getClass();
                    if (Intrinsics.areEqual(url.getProtocol(), "file")) {
                        String str2 = Path.DIRECTORY_SEPARATOR;
                        String file = new File(url.toURI()).toString();
                        file.getClass();
                        pair2 = new Pair(fileSystem, Path.Companion.get(file));
                    } else {
                        pair2 = null;
                    }
                    if (pair2 != null) {
                        arrayList.add(pair2);
                    }
                }
                Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                resources2.getClass();
                ArrayList<URL> list2 = Collections.list(resources2);
                list2.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (URL url2 : list2) {
                    url2.getClass();
                    String url3 = url2.toString();
                    url3.getClass();
                    if (StringsKt__StringsJVMKt.startsWith(url3, "jar:file:", false) && (lastIndexOf$default = StringsKt.lastIndexOf$default(url3, 6, "!")) != -1) {
                        String str3 = Path.DIRECTORY_SEPARATOR;
                        String file2 = new File(URI.create(url3.substring(4, lastIndexOf$default))).toString();
                        file2.getClass();
                        pair = new Pair(ZipFilesKt.openZip(Path.Companion.get(file2), fileSystem, new ZipFilesKt$$ExternalSyntheticLambda3(7)), ResourceFileSystem.ROOT);
                    } else {
                        pair = null;
                    }
                    if (pair != null) {
                        arrayList2.add(pair);
                    }
                }
                return CollectionsKt.plus((Collection) arrayList, (List) arrayList2);
            case 5:
                ScopedInstanceFactory scopedInstanceFactory = (ScopedInstanceFactory) obj;
                ConcurrentHashMap concurrentHashMap = scopedInstanceFactory.values;
                if (!concurrentHashMap.isEmpty()) {
                    scopedInstanceFactory.beanDefinition.callbacks.getClass();
                    concurrentHashMap.clear();
                }
                return Unit.INSTANCE;
            case 6:
                return new NotificationHelper((Context) obj);
            case 7:
                FragmentActivity requireActivity = ((FeedGroupDialog) obj).requireActivity();
                requireActivity.getClass();
                Object systemService = requireActivity.getSystemService((Class<Object>) InputMethodManager.class);
                systemService.getClass();
                return (InputMethodManager) systemService;
            default:
                return Integer.valueOf(PlayerHelper.retrieveSeekDurationFromPreferences(((VideoPlayerUi) obj).player) / 1000);
        }
    }
}
