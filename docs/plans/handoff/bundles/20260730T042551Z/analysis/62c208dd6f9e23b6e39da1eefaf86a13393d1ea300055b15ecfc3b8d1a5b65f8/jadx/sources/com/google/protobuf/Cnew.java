package com.google.protobuf;

import com.google.android.gms.common.api.Api;

/* renamed from: com.google.protobuf.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew {

    /* renamed from: com.google.protobuf.new$do, reason: invalid class name */
    public static final class Cdo extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public int f12082do;

        /* renamed from: for, reason: not valid java name */
        public int f12083for;

        /* renamed from: if, reason: not valid java name */
        public int f12084if;

        /* renamed from: new, reason: not valid java name */
        public final int f12085new;

        /* renamed from: try, reason: not valid java name */
        public int f12086try = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        public Cdo(byte[] bArr, int i, int i2, boolean z) {
            this.f12082do = i2 + i;
            this.f12083for = i;
            this.f12085new = i;
        }

        /* renamed from: do, reason: not valid java name */
        public final int m6270do(int i) {
            if (i < 0) {
                throw new Cclass("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            int i2 = this.f12083for;
            int i3 = this.f12085new;
            int i4 = (i2 - i3) + i;
            if (i4 < 0) {
                throw new Cclass("Failed to parse the message.");
            }
            int i5 = this.f12086try;
            if (i4 > i5) {
                throw Cclass.m6190do();
            }
            this.f12086try = i4;
            int i6 = this.f12082do + this.f12084if;
            this.f12082do = i6;
            int i7 = i6 - i3;
            if (i7 > i4) {
                int i8 = i7 - i4;
                this.f12084if = i8;
                this.f12082do = i6 - i8;
            } else {
                this.f12084if = 0;
            }
            return i5;
        }
    }
}
