package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class StreamEncoder implements Encoder<InputStream> {
    private static final String TAG = "StreamEncoder";
    private final ArrayPool byteArrayPool;

    public StreamEncoder(ArrayPool arrayPool) {
        this.byteArrayPool = arrayPool;
    }

    @Override // com.bumptech.glide.load.Encoder
    public boolean encode(InputStream inputStream, File file, Options options) {
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                fileOutputStream = SentryFileOutputStream.Factory.create(new FileOutputStream(file), file);
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                    }
                }
                this.byteArrayPool.put(bArr);
                return true;
            } catch (IOException e) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Failed to encode data onto the OutputStream", e);
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                this.byteArrayPool.put(bArr);
                return false;
            }
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                }
            }
            this.byteArrayPool.put(bArr);
            throw th;
        }
    }
}
