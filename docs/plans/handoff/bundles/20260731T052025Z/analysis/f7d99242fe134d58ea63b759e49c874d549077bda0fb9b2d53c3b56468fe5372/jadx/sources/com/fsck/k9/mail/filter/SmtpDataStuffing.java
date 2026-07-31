package com.fsck.k9.mail.filter;

import java.io.FilterOutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SmtpDataStuffing extends FilterOutputStream {
    public int state;

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        if (i == 13) {
            this.state = 1;
        } else {
            int i2 = this.state;
            if (i2 == 1 && i == 10) {
                this.state = 2;
            } else if (i2 == 2 && i == 46) {
                super.write(46);
                this.state = 0;
            } else {
                this.state = 0;
            }
        }
        super.write(i);
    }
}
