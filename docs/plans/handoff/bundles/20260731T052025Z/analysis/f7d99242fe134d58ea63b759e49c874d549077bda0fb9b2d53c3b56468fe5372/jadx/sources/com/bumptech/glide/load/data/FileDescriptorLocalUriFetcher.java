package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileDescriptorLocalUriFetcher extends LocalUriFetcher {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileDescriptorLocalUriFetcher(ContentResolver contentResolver, Uri uri, int i) {
        super(0, uri, contentResolver);
        this.$r8$classId = i;
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final void close(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((ParcelFileDescriptor) obj).close();
                break;
            default:
                ((AssetFileDescriptor) obj).close();
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class getDataClass() {
        switch (this.$r8$classId) {
            case 0:
                return ParcelFileDescriptor.class;
            default:
                return AssetFileDescriptor.class;
        }
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final Object loadResource(Uri uri, ContentResolver contentResolver) {
        switch (this.$r8$classId) {
            case 0:
                AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
                if (openAssetFileDescriptor == null) {
                    ZslControlImpl$$ExternalSyntheticLambda1.m(uri, "FileDescriptor is null for: ");
                    break;
                } else {
                    break;
                }
            default:
                AssetFileDescriptor openAssetFileDescriptor2 = contentResolver.openAssetFileDescriptor(uri, "r");
                if (openAssetFileDescriptor2 == null) {
                    ZslControlImpl$$ExternalSyntheticLambda1.m(uri, "FileDescriptor is null for: ");
                    break;
                } else {
                    break;
                }
        }
        return null;
    }
}
