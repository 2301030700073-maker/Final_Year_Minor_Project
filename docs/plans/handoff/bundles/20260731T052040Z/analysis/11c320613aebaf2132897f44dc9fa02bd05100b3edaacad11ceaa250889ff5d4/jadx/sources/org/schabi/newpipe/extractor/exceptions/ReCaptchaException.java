package org.schabi.newpipe.extractor.exceptions;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReCaptchaException extends ExtractionException {
    private final String url;

    public ReCaptchaException(String str) {
        super("reCaptcha Challenge requested");
        this.url = str;
    }

    public final String getUrl() {
        return this.url;
    }
}
