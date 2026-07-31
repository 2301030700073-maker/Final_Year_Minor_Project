package expo.modules;

import expo.modules.adapters.react.ReactAdapterPackage;
import expo.modules.application.ApplicationModule;
import expo.modules.asset.AssetModule;
import expo.modules.blur.BlurModule;
import expo.modules.clipboard.ClipboardModule;
import expo.modules.constants.ConstantsModule;
import expo.modules.constants.ConstantsPackage;
import expo.modules.core.BasePackage;
import expo.modules.core.interfaces.Package;
import expo.modules.device.DeviceModule;
import expo.modules.easclient.EASClientModule;
import expo.modules.fetch.ExpoFetchModule;
import expo.modules.image.ExpoImageModule;
import expo.modules.kotlin.ModulesProvider;
import expo.modules.kotlin.modules.Module;
import expo.modules.storereview.StoreReviewModule;
import expo.modules.updates.UpdatesModule;
import expo.modules.updates.UpdatesPackage;
import expo.modules.video.VideoModule;
import expo.modules.webbrowser.WebBrowserModule;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
public class ExpoModulesPackageList implements ModulesProvider {

    private static class LazyHolder {
        static final List<Package> packagesList = Arrays.asList(new ReactAdapterPackage(), new ConstantsPackage(), new BasePackage(), new UpdatesPackage());
        static final List<Class<? extends Module>> modulesList = Arrays.asList(ExpoFetchModule.class, ApplicationModule.class, AssetModule.class, BlurModule.class, ClipboardModule.class, ConstantsModule.class, DeviceModule.class, EASClientModule.class, ExpoImageModule.class, StoreReviewModule.class, UpdatesModule.class, VideoModule.class, WebBrowserModule.class);

        private LazyHolder() {
        }
    }

    public static List<Package> getPackageList() {
        return LazyHolder.packagesList;
    }

    @Override // expo.modules.kotlin.ModulesProvider
    public List<Class<? extends Module>> getModulesList() {
        return LazyHolder.modulesList;
    }
}
