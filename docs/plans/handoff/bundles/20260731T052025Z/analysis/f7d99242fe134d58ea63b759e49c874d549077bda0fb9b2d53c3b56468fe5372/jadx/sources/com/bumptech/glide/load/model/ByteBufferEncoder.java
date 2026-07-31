package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Base64;
import android.util.Log;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteBufferEncoder implements ModelLoaderFactory, Encoder {
    public static final ByteBufferEncoder FACTORY = new ByteBufferEncoder(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ByteBufferEncoder(int i) {
        this.$r8$classId = i;
    }

    public static ByteArrayInputStream decode(String str) {
        if (!str.startsWith("data:image")) {
            UriKt$$ExternalSyntheticBUOutline0.m("Not a valid image data URL.");
            return null;
        }
        int indexOf = str.indexOf(44);
        if (indexOf == -1) {
            UriKt$$ExternalSyntheticBUOutline0.m("Missing comma in data URL.");
            return null;
        }
        if (str.substring(0, indexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Not a base64 image data URL.");
        return null;
    }

    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        int i = 1;
        int i2 = 0;
        switch (this.$r8$classId) {
            case 1:
                return UnitModelLoader.INSTANCE;
            case 2:
            case 4:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            default:
                return new UrlUriLoader(multiModelLoaderFactory.build(GlideUrl.class, InputStream.class));
            case 3:
                return new FileLoader(i, new ByteBufferEncoder(2));
            case 5:
                return new FileLoader(i, new ByteBufferEncoder(4));
            case 6:
                return new UnitModelLoader(i);
            case 11:
                return new StringLoader(multiModelLoaderFactory.build(Uri.class, AssetFileDescriptor.class), i2);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new StringLoader(multiModelLoaderFactory.build(Uri.class, ParcelFileDescriptor.class), i2);
            case 13:
                return new StringLoader(multiModelLoaderFactory.build(Uri.class, InputStream.class), i2);
        }
    }

    @Override // com.bumptech.glide.load.Encoder
    public boolean encode(Object obj, File file, Options options) {
        try {
            ByteBufferUtil.toFile((ByteBuffer) obj, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e);
            return false;
        }
    }

    public Class getDataClass() {
        switch (this.$r8$classId) {
            case 2:
                return ByteBuffer.class;
            case 4:
                return InputStream.class;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ParcelFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }
}
