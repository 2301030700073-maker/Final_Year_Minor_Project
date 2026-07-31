package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class k implements Iterator {
    public final DirectoryStream.Filter a;
    public final File[] b;
    public int c = 0;
    public final /* synthetic */ l d;

    public k(l lVar, Path path, DirectoryStream.Filter filter) {
        this.d = lVar;
        File[] listFiles = path.toFile().listFiles();
        this.b = listFiles == null ? new File[0] : listFiles;
        this.a = filter;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final n next() {
        n nVar;
        do {
            int i = this.c;
            File[] fileArr = this.b;
            if (i >= fileArr.length) {
                return null;
            }
            this.c = i + 1;
            File file = fileArr[i];
            h hVar = this.d.d;
            String path = file.getPath();
            l lVar = this.d;
            nVar = new n(hVar, path, lVar.b, lVar.c);
            try {
            } catch (IOException e) {
                throw new DirectoryIteratorException(e);
            }
        } while (!this.a.mo969accept(nVar));
        return nVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (next() == null) {
            return false;
        }
        this.c--;
        return true;
    }
}
