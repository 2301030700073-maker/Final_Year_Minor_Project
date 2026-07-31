package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.fsck.k9.contacts.ContactPictureGlideModule;
import com.fsck.k9.glide.K9AppGlideModule;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.Collections;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    public final K9AppGlideModule appGlideModule = new K9AppGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.fsck.k9.glide.K9AppGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.fsck.k9.contacts.ContactPictureGlideModule");
        }
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public final void applyOptions() {
        this.appGlideModule.getClass();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public final Set getExcludedModuleClasses() {
        return Collections.EMPTY_SET;
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public final RequestManagerRetriever.RequestManagerFactory getRequestManagerFactory() {
        return new VerboseLogger();
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public final void isManifestParsingEnabled() {
        this.appGlideModule.getClass();
    }

    @Override // org.jsoup.helper.Validate
    public final void registerComponents(Context context, Glide glide, Registry registry) {
        new ContactPictureGlideModule().registerComponents(context, glide, registry);
        this.appGlideModule.getClass();
    }
}
