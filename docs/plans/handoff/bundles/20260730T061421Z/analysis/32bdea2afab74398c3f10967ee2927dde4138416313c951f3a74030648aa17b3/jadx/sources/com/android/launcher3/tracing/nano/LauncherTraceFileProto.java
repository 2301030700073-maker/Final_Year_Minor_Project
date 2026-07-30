package com.android.launcher3.tracing.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.d;
import c.b.b.a1.e;
import c.b.b.a1.f;

/* loaded from: classes.dex */
public final class LauncherTraceFileProto extends e {
    public LauncherTraceEntryProto[] entry;
    public long magicNumber = 0;

    public LauncherTraceFileProto() {
        if (LauncherTraceEntryProto._emptyArray == null) {
            synchronized (d.f3169b) {
                if (LauncherTraceEntryProto._emptyArray == null) {
                    LauncherTraceEntryProto._emptyArray = new LauncherTraceEntryProto[0];
                }
            }
        }
        this.entry = LauncherTraceEntryProto._emptyArray;
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = 0;
        int g = this.magicNumber != 0 ? b.g(1) + 8 + 0 : 0;
        LauncherTraceEntryProto[] launcherTraceEntryProtoArr = this.entry;
        if (launcherTraceEntryProtoArr != null && launcherTraceEntryProtoArr.length > 0) {
            while (true) {
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr2 = this.entry;
                if (i >= launcherTraceEntryProtoArr2.length) {
                    break;
                }
                LauncherTraceEntryProto launcherTraceEntryProto = launcherTraceEntryProtoArr2[i];
                if (launcherTraceEntryProto != null) {
                    g += b.d(2, launcherTraceEntryProto);
                }
                i++;
            }
        }
        return g;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 9) {
                this.magicNumber = aVar.h();
            } else if (k == 18) {
                int a2 = f.a(aVar, 18);
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr = this.entry;
                int length = launcherTraceEntryProtoArr == null ? 0 : launcherTraceEntryProtoArr.length;
                int i = a2 + length;
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr2 = new LauncherTraceEntryProto[i];
                if (length != 0) {
                    System.arraycopy(this.entry, 0, launcherTraceEntryProtoArr2, 0, length);
                }
                while (length < i - 1) {
                    launcherTraceEntryProtoArr2[length] = new LauncherTraceEntryProto();
                    aVar.d(launcherTraceEntryProtoArr2[length]);
                    aVar.k();
                    length++;
                }
                launcherTraceEntryProtoArr2[length] = new LauncherTraceEntryProto();
                aVar.d(launcherTraceEntryProtoArr2[length]);
                this.entry = launcherTraceEntryProtoArr2;
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        long j = this.magicNumber;
        if (j != 0) {
            bVar.l(1, j);
        }
        LauncherTraceEntryProto[] launcherTraceEntryProtoArr = this.entry;
        if (launcherTraceEntryProtoArr == null || launcherTraceEntryProtoArr.length <= 0) {
            return;
        }
        int i = 0;
        while (true) {
            LauncherTraceEntryProto[] launcherTraceEntryProtoArr2 = this.entry;
            if (i >= launcherTraceEntryProtoArr2.length) {
                return;
            }
            LauncherTraceEntryProto launcherTraceEntryProto = launcherTraceEntryProtoArr2[i];
            if (launcherTraceEntryProto != null) {
                bVar.o(2, launcherTraceEntryProto);
            }
            i++;
        }
    }
}
