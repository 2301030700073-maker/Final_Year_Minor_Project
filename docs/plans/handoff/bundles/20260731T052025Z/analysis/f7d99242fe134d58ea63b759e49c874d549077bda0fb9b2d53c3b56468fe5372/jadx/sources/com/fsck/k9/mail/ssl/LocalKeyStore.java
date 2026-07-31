package com.fsck.k9.mail.ssl;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.AndroidKeyStoreDirectoryProvider;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalKeyStore {
    public final AndroidKeyStoreDirectoryProvider directoryProvider;
    public final SynchronizedLazyImpl keyStore$delegate;
    public final SynchronizedLazyImpl keyStoreDirectory$delegate;
    public File keyStoreFile;

    public LocalKeyStore(AndroidKeyStoreDirectoryProvider androidKeyStoreDirectoryProvider) {
        this.directoryProvider = androidKeyStoreDirectoryProvider;
        final int i = 0;
        this.keyStoreDirectory$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.fsck.k9.mail.ssl.LocalKeyStore$$ExternalSyntheticLambda0
            public final /* synthetic */ LocalKeyStore f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyStore keyStore;
                FileInputStream fileInputStream;
                switch (i) {
                    case 0:
                        File dir = this.f$0.directoryProvider.context.getDir("KeyStore", 0);
                        dir.getClass();
                        return dir;
                    default:
                        LocalKeyStore localKeyStore = this.f$0;
                        synchronized (localKeyStore) {
                            File keyStoreFile = localKeyStore.getKeyStoreFile(0);
                            if (keyStoreFile.exists() && !keyStoreFile.delete()) {
                                Log.d("Failed to delete old key-store file: %s", keyStoreFile.getAbsolutePath());
                            }
                            File keyStoreFile2 = localKeyStore.getKeyStoreFile(1);
                            if (keyStoreFile2.length() == 0 && keyStoreFile2.exists() && !keyStoreFile2.delete()) {
                                Log.d("Failed to delete empty keystore file: %s", keyStoreFile2.getAbsolutePath());
                            }
                            keyStore = null;
                            try {
                                fileInputStream = new FileInputStream(keyStoreFile2);
                            } catch (FileNotFoundException unused) {
                                fileInputStream = null;
                            }
                            try {
                                try {
                                    localKeyStore.keyStoreFile = keyStoreFile2;
                                    KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
                                    keyStore2.load(fileInputStream, LocalKeyStoreKt.PASSWORD);
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    keyStore = keyStore2;
                                } catch (Exception e) {
                                    Log.e(e, "Failed to initialize local key store", new Object[0]);
                                    localKeyStore.keyStoreFile = null;
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                }
                            } catch (Throwable th) {
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        }
                        return keyStore;
                }
            }
        });
        final int i2 = 1;
        this.keyStore$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.fsck.k9.mail.ssl.LocalKeyStore$$ExternalSyntheticLambda0
            public final /* synthetic */ LocalKeyStore f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyStore keyStore;
                FileInputStream fileInputStream;
                switch (i2) {
                    case 0:
                        File dir = this.f$0.directoryProvider.context.getDir("KeyStore", 0);
                        dir.getClass();
                        return dir;
                    default:
                        LocalKeyStore localKeyStore = this.f$0;
                        synchronized (localKeyStore) {
                            File keyStoreFile = localKeyStore.getKeyStoreFile(0);
                            if (keyStoreFile.exists() && !keyStoreFile.delete()) {
                                Log.d("Failed to delete old key-store file: %s", keyStoreFile.getAbsolutePath());
                            }
                            File keyStoreFile2 = localKeyStore.getKeyStoreFile(1);
                            if (keyStoreFile2.length() == 0 && keyStoreFile2.exists() && !keyStoreFile2.delete()) {
                                Log.d("Failed to delete empty keystore file: %s", keyStoreFile2.getAbsolutePath());
                            }
                            keyStore = null;
                            try {
                                fileInputStream = new FileInputStream(keyStoreFile2);
                            } catch (FileNotFoundException unused) {
                                fileInputStream = null;
                            }
                            try {
                                try {
                                    localKeyStore.keyStoreFile = keyStoreFile2;
                                    KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
                                    keyStore2.load(fileInputStream, LocalKeyStoreKt.PASSWORD);
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    keyStore = keyStore2;
                                } catch (Exception e) {
                                    Log.e(e, "Failed to initialize local key store", new Object[0]);
                                    localKeyStore.keyStoreFile = null;
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                }
                            } catch (Throwable th) {
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        }
                        return keyStore;
                }
            }
        });
    }

    public static String getCertKey(String str, int i) {
        return str + ":" + i;
    }

    public final synchronized void deleteCertificate(String str, int i) {
        str.getClass();
        KeyStore keyStore = (KeyStore) this.keyStore$delegate.getValue();
        if (keyStore == null) {
            return;
        }
        try {
            keyStore.deleteEntry(getCertKey(str, i));
            writeCertificateFile();
        } catch (KeyStoreException unused) {
        } catch (CertificateException e) {
            Log.e(e, "Error updating the local key store file", new Object[0]);
        }
    }

    public final File getKeyStoreFile(int i) {
        SynchronizedLazyImpl synchronizedLazyImpl = this.keyStoreDirectory$delegate;
        return i < 1 ? new File((File) synchronizedLazyImpl.getValue(), "KeyStore.bks") : new File((File) synchronizedLazyImpl.getValue(), CameraDevices$CC.m(i, "KeyStore_v", ".bks"));
    }

    public final void writeCertificateFile() {
        KeyStore keyStore = (KeyStore) this.keyStore$delegate.getValue();
        if (keyStore == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.keyStoreFile);
        try {
            try {
                try {
                    try {
                        keyStore.store(fileOutputStream, LocalKeyStoreKt.PASSWORD);
                        fileOutputStream.close();
                    } catch (CertificateException e) {
                        throw new CertificateException("Unable to write KeyStore: " + e.getMessage(), e);
                    }
                } catch (IOException e2) {
                    throw new CertificateException("Unable to write KeyStore: " + e2.getMessage(), e2);
                } catch (NoSuchAlgorithmException e3) {
                    throw new CertificateException("Unable to write KeyStore: " + e3.getMessage(), e3);
                }
            } catch (FileNotFoundException e4) {
                throw new CertificateException("Unable to write KeyStore: " + e4.getMessage(), e4);
            } catch (KeyStoreException e5) {
                throw new CertificateException("Unable to write KeyStore: " + e5.getMessage(), e5);
            }
        } finally {
        }
    }
}
