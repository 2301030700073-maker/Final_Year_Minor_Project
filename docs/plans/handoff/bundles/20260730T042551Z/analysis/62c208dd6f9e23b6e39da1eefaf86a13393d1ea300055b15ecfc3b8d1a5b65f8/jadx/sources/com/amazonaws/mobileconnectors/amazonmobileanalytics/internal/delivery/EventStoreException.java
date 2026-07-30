package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery;

/* loaded from: classes.dex */
public class EventStoreException extends RuntimeException {
    public EventStoreException() {
        super("Unable to create eventsFile");
    }

    public EventStoreException(String str, Exception exc) {
        super(str, exc);
    }
}
