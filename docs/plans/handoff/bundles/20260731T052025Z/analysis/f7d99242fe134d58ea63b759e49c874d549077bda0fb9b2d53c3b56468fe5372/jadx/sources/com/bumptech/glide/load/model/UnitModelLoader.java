package com.bumptech.glide.load.model;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import com.fsck.k9.contacts.ContactImageDataFetcher;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnitModelLoader implements ModelLoader {
    public static final UnitModelLoader INSTANCE = new UnitModelLoader(0);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ UnitModelLoader(int i) {
        this.$r8$classId = i;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        switch (this.$r8$classId) {
            case 0:
                return new ModelLoader.LoadData(new ObjectKey(obj), new ContactImageDataFetcher(2, obj));
            case 1:
                File file = (File) obj;
                return new ModelLoader.LoadData(new ObjectKey(file), new ContactImageDataFetcher(1, file));
            default:
                return null;
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }
}
