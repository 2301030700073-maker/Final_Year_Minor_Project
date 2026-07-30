package com.github.penfeizhou.animation.io;

import io.sentry.instrumentation.file.SentryFileInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public class FileReader extends FilterReader {
    private final File mFile;

    public FileReader(File file) throws IOException {
        super(new StreamReader(new FileInputStream(file)));
        this.mFile = file;
    }

    @Override // com.github.penfeizhou.animation.io.FilterReader, com.github.penfeizhou.animation.io.Reader
    public void reset() throws IOException {
        this.reader.close();
        File file = this.mFile;
        this.reader = new StreamReader(SentryFileInputStream.Factory.create(new FileInputStream(file), file));
    }
}
