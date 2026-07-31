package org.mozilla.javascript.ast;

import org.mozilla.javascript.ErrorReporter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface IdeErrorReporter extends ErrorReporter {
    void error(String str, String str2, int i, int i2);

    void warning(String str, String str2, int i, int i2);
}
