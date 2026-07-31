package org.acra.startup;

import java.io.File;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Report {
    public boolean approve;
    public final boolean approved;
    public boolean delete;
    public final File file;

    public Report(File file, boolean z) {
        file.getClass();
        this.file = file;
        this.approved = z;
    }
}
