package androidx.biometric;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Size;
import android.view.MenuItem;
import android.view.Surface;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.appcompat.view.menu.CascadingMenuPopup$3$1;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.PopupMenu;
import androidx.appcompat.widget.Toolbar;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.SmallDisplaySizeQuirk;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.internal.IntrinsicZoomCalculatorImpl;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSequence;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.SettableImageProxy;
import androidx.camera.core.SingleCloseImageProxy;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.AutoValue_Identifier;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.ReadableConfig;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.camera.core.processing.SurfaceEdge$$ExternalSyntheticLambda0;
import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalFolder;
import com.google.common.util.concurrent.ListenableFuture;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.sync.MutexImpl;
import net.thunderbird.feature.account.server.settings.ui.common.BiometricAuthenticator$authenticate$2$authenticationCallback$1;
import okhttp3.Dispatcher;
import org.apache.james.mime4j.stream.RawField;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class BiometricPrompt implements MenuItemHoverListener, MenuPresenter.Callback, MenuBuilder.Callback, AppCompatTextView.SuperCaller, UseTorchAsFlash, ReadableConfig, ImageProxy.PlaneProxy, FutureCallback, ImageReaderProxy, CameraConfig, CallbackToFutureAdapter$Resolver, AsyncFunction {
    public final /* synthetic */ int $r8$classId;
    public Object mClientFragmentManager;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AuthenticationResult {
    }

    public BiometricPrompt(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 13:
                Quirks quirks = DeviceQuirks.all;
                this.mClientFragmentManager = (CloseCameraDeviceOnCameraGraphCloseQuirk) DeviceQuirks.getAll().get(CloseCameraDeviceOnCameraGraphCloseQuirk.class);
                break;
            case 14:
                Quirks quirks2 = DeviceQuirks.all;
                this.mClientFragmentManager = (SmallDisplaySizeQuirk) DeviceQuirks.getAll().get(SmallDisplaySizeQuirk.class);
                break;
            case 19:
                this.mClientFragmentManager = new MutexImpl();
                break;
            case 27:
                this.mClientFragmentManager = new AutoValue_Identifier(new Object());
                break;
        }
    }

    public static SettableImageProxy createImageProxyWithEmptyMetadata(ImageProxy imageProxy) {
        if (imageProxy == null) {
            return null;
        }
        return new SettableImageProxy(imageProxy, new Size(imageProxy.getWidth(), imageProxy.getHeight()), new CameraCaptureResultImageInfo(new VirtualCameraCaptureResult(null, TagBundle.EMPTY_TAGBUNDLE, imageProxy.getImageInfo().getTimestamp())));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b1, code lost:
    
        if (r1 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c2, code lost:
    
        if (r2 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00eb, code lost:
    
        if (r4 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
    
        if (r1 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010d, code lost:
    
        if (r4 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0122, code lost:
    
        if (r3 == false) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult.UseCaseMissing getMissingUseCase(androidx.camera.core.featuregroup.GroupableFeature r10, java.util.List r11) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.biometric.BiometricPrompt.getMissingUseCase(androidx.camera.core.featuregroup.GroupableFeature, java.util.List):androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult$UseCaseMissing");
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireLatestImage() {
        return createImageProxyWithEmptyMetadata(((LocalFolder.AnonymousClass12) this.mClientFragmentManager).acquireLatestImage());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireNextImage() {
        return createImageProxyWithEmptyMetadata(((LocalFolder.AnonymousClass12) this.mClientFragmentManager).acquireNextImage());
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction, androidx.arch.core.util.Function
    public ListenableFuture apply(Object obj) {
        return Futures.immediateFuture(((Function) this.mClientFragmentManager).apply(obj));
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        FutureChain futureChain = (FutureChain) this.mClientFragmentManager;
        RelationUtil.checkState("The result can only set once!", futureChain.mCompleter == null);
        futureChain.mCompleter = callbackToFutureAdapter$Completer;
        return "FutureChain[" + futureChain + "]";
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void authenticate(androidx.cardview.widget.CardView.AnonymousClass1 r12) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.biometric.BiometricPrompt.authenticate(androidx.cardview.widget.CardView$1):void");
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void clearOnImageAvailableListener() {
        ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).clearOnImageAvailableListener();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void close() {
        ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).close();
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ boolean containsOption(AutoValue_Config_Option autoValue_Config_Option) {
        boolean containsOption;
        int i = this.$r8$classId;
        containsOption = getConfig().containsOption(autoValue_Config_Option);
        return containsOption;
    }

    @Override // androidx.camera.core.impl.Config
    public void findOptions(CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0) {
        switch (this.$r8$classId) {
            case 16:
                getConfig().findOptions(captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);
                break;
            default:
                getConfig().findOptions(captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);
                break;
        }
    }

    @Override // androidx.camera.core.ImageProxy.PlaneProxy
    public ByteBuffer getBuffer() {
        return ((Image.Plane) this.mClientFragmentManager).getBuffer();
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        switch (this.$r8$classId) {
            case 16:
                return (Config) this.mClientFragmentManager;
            default:
                return OptionsBundle.EMPTY_BUNDLE;
        }
    }

    public FeatureGroupResolutionResult getFeatureListResolvedByPriority(LegacySessionConfig legacySessionConfig, ArrayList arrayList, int i, List list) {
        if (i < arrayList.size()) {
            int i2 = i + 1;
            FeatureGroupResolutionResult featureListResolvedByPriority = getFeatureListResolvedByPriority(legacySessionConfig, arrayList, i2, CollectionsKt.plus(list, arrayList.get(i)));
            return featureListResolvedByPriority instanceof FeatureGroupResolutionResult.Supported ? featureListResolvedByPriority : getFeatureListResolvedByPriority(legacySessionConfig, arrayList, i2, list);
        }
        LinkedHashSet plus = Validate.plus((Set) legacySessionConfig.requiredFeatureGroup, (Iterable) list);
        Utf8.SafeProcessor.d("DefaultFeatureGroupResolver", "getFeatureListResolvedByPriority: features = " + plus + ", useCases = " + ((List) legacySessionConfig.useCases));
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(plus, 10));
        Iterator it = plus.iterator();
        while (it.hasNext()) {
            arrayList2.add(((GroupableFeature) it.next()).getFeatureTypeInternal());
        }
        Iterator it2 = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList2)).iterator();
        while (true) {
            if (it2.hasNext()) {
                FeatureTypeInternal featureTypeInternal = (FeatureTypeInternal) it2.next();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : plus) {
                    if (((GroupableFeature) obj).getFeatureTypeInternal() == featureTypeInternal) {
                        arrayList3.add(obj);
                    }
                }
                if (arrayList3.size() > 1) {
                    break;
                }
            } else if (((CameraInfoInternal) this.mClientFragmentManager).isResolvedFeatureGroupSupported(new ResolvedFeatureGroup(plus), legacySessionConfig)) {
                return new FeatureGroupResolutionResult.Supported(new ResolvedFeatureGroup(plus));
            }
        }
        return FeatureGroupResolutionResult.Unsupported.INSTANCE;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getHeight() {
        return ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).getHeight();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getImageFormat() {
        return ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).getImageFormat();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getMaxImages() {
        return ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).getMaxImages();
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Config.OptionPriority getOptionPriority(AutoValue_Config_Option autoValue_Config_Option) {
        Config.OptionPriority optionPriority;
        int i = this.$r8$classId;
        optionPriority = getConfig().getOptionPriority(autoValue_Config_Option);
        return optionPriority;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Integer[] getOutputFormats() {
        /*
            r3 = this;
            java.lang.String r0 = "Failed to get output formats from StreamConfigurationMap"
            java.lang.String r1 = "StreamConfigurationMapCompatBaseImpl"
            r2 = 0
            java.lang.Object r3 = r3.mClientFragmentManager     // Catch: java.lang.IllegalArgumentException -> L10 java.lang.NullPointerException -> L12
            android.hardware.camera2.params.StreamConfigurationMap r3 = (android.hardware.camera2.params.StreamConfigurationMap) r3     // Catch: java.lang.IllegalArgumentException -> L10 java.lang.NullPointerException -> L12
            if (r3 == 0) goto L17
            int[] r3 = r3.getOutputFormats()     // Catch: java.lang.IllegalArgumentException -> L10 java.lang.NullPointerException -> L12
            goto L1d
        L10:
            r3 = move-exception
            goto L14
        L12:
            r3 = move-exception
            goto L19
        L14:
            androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.w(r1, r0, r3)
        L17:
            r3 = r2
            goto L1d
        L19:
            androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.w(r1, r0, r3)
            goto L17
        L1d:
            if (r3 == 0) goto L23
            java.lang.Integer[] r2 = kotlin.collections.ArraysKt___ArraysKt.toTypedArray(r3)
        L23:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.biometric.BiometricPrompt.getOutputFormats():java.lang.Integer[]");
    }

    public long getOutputMinFrameDuration(int i, Size size) {
        size.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mClientFragmentManager;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputMinFrameDuration(i, size);
        }
        return 0L;
    }

    public Size[] getOutputSizes(int i) {
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mClientFragmentManager;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputSizes(i);
        }
        return null;
    }

    @Override // androidx.camera.core.ImageProxy.PlaneProxy
    public int getPixelStride() {
        return ((Image.Plane) this.mClientFragmentManager).getPixelStride();
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Set getPriorities(AutoValue_Config_Option autoValue_Config_Option) {
        Set priorities;
        int i = this.$r8$classId;
        priorities = getConfig().getPriorities(autoValue_Config_Option);
        return priorities;
    }

    @Override // androidx.camera.core.ImageProxy.PlaneProxy
    public int getRowStride() {
        return ((Image.Plane) this.mClientFragmentManager).getRowStride();
    }

    public void getSessionProcessor() {
        int i = CameraConfig.CC.$r8$clinit;
        if (((OptionsBundle) getConfig()).retrieveOption(CameraConfig.OPTION_SESSION_PROCESSOR, null) == null) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public Surface getSurface() {
        return ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).getSurface();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getWidth() {
        return ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).getWidth();
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Set listOptions() {
        Set listOptions;
        int i = this.$r8$classId;
        listOptions = getConfig().listOptions();
        return listOptions;
    }

    public void onCaptureSequenceComplete(Camera2CaptureSequence camera2CaptureSequence) {
        if (camera2CaptureSequence.repeating) {
            return;
        }
        RawField rawField = (RawField) this.mClientFragmentManager;
        synchronized (((ArrayList) rawField.body)) {
            ((ArrayList) rawField.body).remove(camera2CaptureSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder instanceof SubMenuBuilder) {
            ((SubMenuBuilder) menuBuilder).mParentMenu.getRootMenu().close(false);
        }
        MenuPresenter.Callback callback = ((ActionMenuPresenter) this.mClientFragmentManager).mCallback;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
    public void onFailure(Throwable th) {
        switch (this.$r8$classId) {
            case 22:
                ((ImageProxy) this.mClientFragmentManager).close();
                break;
            case 23:
                ((SingleCloseImageProxy) this.mClientFragmentManager).close();
                break;
        }
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverEnter(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) this.mClientFragmentManager;
        Handler handler = cascadingMenuPopup.mSubMenuHoverHandler;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = cascadingMenuPopup.mShowingMenus;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (menuBuilder == ((CascadingMenuPopup.CascadingMenuInfo) arrayList.get(i)).menu) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        handler.postAtTime(new CascadingMenuPopup$3$1(this, i2 < arrayList.size() ? (CascadingMenuPopup.CascadingMenuInfo) arrayList.get(i2) : null, menuItemImpl, menuBuilder), menuBuilder, SystemClock.uptimeMillis() + 200);
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
        ((CascadingMenuPopup) this.mClientFragmentManager).mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        boolean onMenuItemSelected;
        switch (this.$r8$classId) {
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ActionMenuView.OnMenuItemClickListener onMenuItemClickListener = ((ActionMenuView) this.mClientFragmentManager).mOnMenuItemClickListener;
                if (onMenuItemClickListener != null) {
                    Toolbar toolbar = Toolbar.this;
                    Iterator it = ((CopyOnWriteArrayList) toolbar.mMenuHostHelper.mMenuProviders).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            Toolbar.OnMenuItemClickListener onMenuItemClickListener2 = toolbar.mOnMenuItemClickListener;
                            onMenuItemSelected = onMenuItemClickListener2 != null ? ToolbarActionBar.this.mWindowCallback.onMenuItemSelected(0, menuItem) : false;
                        } else if (((FragmentManager.AnonymousClass2) it.next()).onMenuItemSelected(menuItem)) {
                            onMenuItemSelected = true;
                        }
                    }
                    if (onMenuItemSelected) {
                        break;
                    }
                }
                break;
            default:
                PopupMenu.OnMenuItemClickListener onMenuItemClickListener3 = ((PopupMenu) this.mClientFragmentManager).mMenuItemClickListener;
                if (onMenuItemClickListener3 != null) {
                    onMenuItemClickListener3.onMenuItemClick(menuItem);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        switch (this.$r8$classId) {
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                MenuBuilder.Callback callback = ((ActionMenuView) this.mClientFragmentManager).mMenuBuilderCallback;
                if (callback != null) {
                    callback.onMenuModeChange(menuBuilder);
                    break;
                }
                break;
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        ActionMenuPresenter actionMenuPresenter = (ActionMenuPresenter) this.mClientFragmentManager;
        if (menuBuilder == actionMenuPresenter.mMenu) {
            return false;
        }
        ((SubMenuBuilder) menuBuilder).mItem.getClass();
        MenuPresenter.Callback callback = actionMenuPresenter.mCallback;
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
    public void onSuccess(Object obj) {
        switch (this.$r8$classId) {
            case 22:
                break;
            case 23:
                break;
            default:
                ((SurfaceEdge$$ExternalSyntheticLambda0) this.mClientFragmentManager).run();
                break;
        }
    }

    @Override // androidx.camera.core.impl.Config
    public Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option) {
        Object retrieveOption;
        switch (this.$r8$classId) {
            case 16:
                return getConfig().retrieveOption(autoValue_Config_Option);
            default:
                retrieveOption = getConfig().retrieveOption(autoValue_Config_Option);
                return retrieveOption;
        }
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Object retrieveOptionWithPriority(AutoValue_Config_Option autoValue_Config_Option, Config.OptionPriority optionPriority) {
        Object retrieveOptionWithPriority;
        int i = this.$r8$classId;
        retrieveOptionWithPriority = getConfig().retrieveOptionWithPriority(autoValue_Config_Option, optionPriority);
        return retrieveOptionWithPriority;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void setOnImageAvailableListener(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, Executor executor) {
        ((LocalFolder.AnonymousClass12) this.mClientFragmentManager).setOnImageAvailableListener(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(3, this, onImageAvailableListener), executor);
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option, Object obj) {
        Object retrieveOption;
        int i = this.$r8$classId;
        retrieveOption = getConfig().retrieveOption(autoValue_Config_Option, obj);
        return retrieveOption;
    }

    private final void onFailure$androidx$camera$core$SurfaceRequest$5(Throwable th) {
    }

    private final void onMenuModeChange$androidx$appcompat$widget$PopupMenu$1(MenuBuilder menuBuilder) {
    }

    public void setFirstBaselineToTopHeight(int i) {
    }

    public void setLastBaselineToBottomHeight(int i) {
    }

    public void setLineHeight(int i, float f) {
    }

    public BiometricPrompt(Config config) {
        this.$r8$classId = 16;
        config.getClass();
        this.mClientFragmentManager = config;
    }

    public BiometricPrompt(CameraQuirks cameraQuirks, CameraDevicesImpl cameraDevicesImpl, IntrinsicZoomCalculatorImpl intrinsicZoomCalculatorImpl) {
        this.$r8$classId = 15;
        this.mClientFragmentManager = cameraQuirks;
        new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(7, this));
    }

    public /* synthetic */ BiometricPrompt(int i, Object obj) {
        this.$r8$classId = i;
        this.mClientFragmentManager = obj;
    }

    public BiometricPrompt(AppCompatActivity appCompatActivity, Executor executor, BiometricAuthenticator$authenticate$2$authenticationCallback$1 biometricAuthenticator$authenticate$2$authenticationCallback$1) {
        this.$r8$classId = 0;
        FragmentManagerImpl supportFragmentManager = appCompatActivity.getSupportFragmentManager();
        ViewModelStore viewModelStore = appCompatActivity.getViewModelStore();
        ViewModelProvider$Factory defaultViewModelProviderFactory = appCompatActivity.getDefaultViewModelProviderFactory();
        MutableCreationExtras defaultViewModelCreationExtras = appCompatActivity.getDefaultViewModelCreationExtras();
        defaultViewModelProviderFactory.getClass();
        Dispatcher dispatcher = new Dispatcher(viewModelStore, defaultViewModelProviderFactory, defaultViewModelCreationExtras);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BiometricViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName != null) {
            BiometricViewModel biometricViewModel = (BiometricViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
            this.mClientFragmentManager = supportFragmentManager;
            biometricViewModel.mClientExecutor = executor;
            biometricViewModel.mClientCallback = biometricAuthenticator$authenticate$2$authenticationCallback$1;
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
        throw null;
    }
}
