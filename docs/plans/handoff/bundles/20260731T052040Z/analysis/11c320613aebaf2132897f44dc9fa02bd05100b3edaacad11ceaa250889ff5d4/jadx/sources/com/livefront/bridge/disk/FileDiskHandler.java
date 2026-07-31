package com.livefront.bridge.disk;

import androidx.compose.ui.node.Owner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FileDiskHandler {
    public final Object mDirectory;
    public volatile boolean mIsLoadedOrTimedOut;
    public final Serializable mKeyByteMap;
    public final Object mPendingLoadFuture;

    public FileDiskHandler(App app, ExecutorService executorService) {
        this.mKeyByteMap = new ConcurrentHashMap();
        this.mIsLoadedOrTimedOut = false;
        this.mDirectory = app.getDir("com.livefront.bridge", 0);
        this.mPendingLoadFuture = executorService.submit(new LiveData.AnonymousClass1(this, 19));
    }

    public static void closeWithRuntimeException(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                Owner.CC.m(autoCloseable);
            } catch (Exception e) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
            }
        }
    }

    public void deleteFilesByKey(String str) {
        File[] listFiles = ((File) this.mDirectory).listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (str == null || str.equals(file.getName())) {
                file.delete();
            }
        }
    }

    public byte[] getBytesInternal(String str) {
        File file;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.mKeyByteMap;
        byte[] bArr = (byte[]) concurrentHashMap.get(str);
        if (bArr != null) {
            return bArr;
        }
        File[] listFiles = ((File) this.mDirectory).listFiles();
        byte[] bArr2 = null;
        if (listFiles != null) {
            int length = listFiles.length;
            for (int i = 0; i < length; i++) {
                file = listFiles[i];
                if (str.equals(file.getName())) {
                    break;
                }
            }
        }
        file = null;
        if (file != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr3 = new byte[(int) file.length()];
                try {
                    fileInputStream.read(bArr3);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused) {
                    }
                    bArr2 = bArr3;
                } catch (IOException unused2) {
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused3) {
                    }
                    throw th;
                }
            } catch (FileNotFoundException | IOException unused4) {
            }
        }
        if (bArr2 != null) {
            concurrentHashMap.put(str, bArr2);
        }
        return bArr2;
    }

    public FileDiskHandler() {
        this.mDirectory = new SynchronizedObject();
        this.mPendingLoadFuture = new LinkedHashMap();
        this.mKeyByteMap = new LinkedHashSet();
    }
}
