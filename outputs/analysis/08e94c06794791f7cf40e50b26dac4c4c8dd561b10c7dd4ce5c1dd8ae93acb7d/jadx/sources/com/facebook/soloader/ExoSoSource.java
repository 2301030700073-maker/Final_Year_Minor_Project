package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.UnpackingSoSource;
import io.sentry.instrumentation.file.SentryFileInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: classes3.dex */
public final class ExoSoSource extends UnpackingSoSource {
    public ExoSoSource(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.DirectorySoSource, com.facebook.soloader.SoSource
    public String getName() {
        return "ExoSoSource";
    }

    @Override // com.facebook.soloader.UnpackingSoSource
    protected MessageDigest getHashingAlgorithm() throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
    }

    @Override // com.facebook.soloader.UnpackingSoSource
    protected UnpackingSoSource.Unpacker makeUnpacker() throws IOException {
        return new ExoUnpacker(this);
    }

    private final class ExoUnpacker extends UnpackingSoSource.Unpacker {
        private final FileDso[] mDsos;

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00f8, code lost:
        
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r12 + "]");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        ExoUnpacker(com.facebook.soloader.UnpackingSoSource r20) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.ExoSoSource.ExoUnpacker.<init>(com.facebook.soloader.ExoSoSource, com.facebook.soloader.UnpackingSoSource):void");
        }

        @Override // com.facebook.soloader.UnpackingSoSource.Unpacker
        public UnpackingSoSource.Dso[] getDsos() throws IOException {
            return this.mDsos;
        }

        @Override // com.facebook.soloader.UnpackingSoSource.Unpacker
        public void unpack(File file) throws IOException {
            byte[] bArr = new byte[32768];
            for (FileDso fileDso : this.mDsos) {
                File file2 = fileDso.backingFile;
                FileInputStream create = SentryFileInputStream.Factory.create(new FileInputStream(file2), file2);
                try {
                    UnpackingSoSource.InputDso inputDso = new UnpackingSoSource.InputDso(fileDso, create);
                    create = null;
                    try {
                        extractDso(inputDso, bArr, file);
                        inputDso.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    if (create != null) {
                        create.close();
                    }
                    throw th;
                }
            }
        }
    }

    private static final class FileDso extends UnpackingSoSource.Dso {
        final File backingFile;

        FileDso(String str, String str2, File file) {
            super(str, str2);
            this.backingFile = file;
        }
    }
}
