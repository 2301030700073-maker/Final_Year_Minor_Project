package org.ocpsoft.prettytime;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface TimeFormat {
    String decorate(Duration duration, String str);

    String decorateUnrounded(Duration duration, String str);

    String format(Duration duration);

    String formatUnrounded(Duration duration);
}
