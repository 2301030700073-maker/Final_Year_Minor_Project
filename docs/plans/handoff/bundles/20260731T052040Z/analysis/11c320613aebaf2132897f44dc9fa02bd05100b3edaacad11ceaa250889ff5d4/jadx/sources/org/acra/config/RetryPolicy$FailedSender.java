package org.acra.config;

import org.acra.sender.ReportSender;
import org.acra.sender.ReportSenderException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RetryPolicy$FailedSender {
    public final ReportSenderException exception;
    public final ReportSender sender;

    public RetryPolicy$FailedSender(ReportSender reportSender, ReportSenderException reportSenderException) {
        reportSender.getClass();
        this.sender = reportSender;
        this.exception = reportSenderException;
    }
}
