package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.DefaultFileManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.EventStoreException;
import com.amazonaws.util.StringUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class FileSessionStore implements SessionStore {

    /* renamed from: do, reason: not valid java name */
    public final AnalyticsContext f8931do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BufferedReader f8932do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public File f8933do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ReentrantReadWriteLock.ReadLock f8934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ReentrantReadWriteLock.WriteLock f8935do;

    public FileSessionStore(DefaultAnalyticsContext defaultAnalyticsContext) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(true);
        this.f8934do = reentrantReadWriteLock.readLock();
        this.f8935do = reentrantReadWriteLock.writeLock();
        this.f8932do = null;
        this.f8931do = defaultAnalyticsContext;
        DefaultFileManager defaultFileManager = defaultAnalyticsContext.f8805do.f8837do;
        try {
            this.f8933do = defaultFileManager.m5074if(new File(defaultFileManager.m5072do("sessions"), "sessionFile"));
        } catch (IOException unused) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5105do() {
        if (this.f8932do != null) {
            ReentrantReadWriteLock.ReadLock readLock = this.f8934do;
            readLock.lock();
            try {
                try {
                    this.f8932do.close();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f8932do = null;
                    throw th;
                }
                this.f8932do = null;
            } finally {
                readLock.unlock();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5106for() {
        InputStreamReader inputStreamReader;
        if (this.f8932do != null) {
            return;
        }
        try {
            DefaultFileManager defaultFileManager = ((DefaultAnalyticsContext) this.f8931do).f8805do.f8837do;
            File file = this.f8933do;
            defaultFileManager.getClass();
            inputStreamReader = new InputStreamReader(new FileInputStream(file), StringUtils.f9077do);
        } catch (FileNotFoundException unused) {
            inputStreamReader = null;
        }
        if (inputStreamReader != null) {
            this.f8932do = new BufferedReader(inputStreamReader);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final OutputStreamWriter m5107if() {
        try {
            DefaultFileManager defaultFileManager = ((DefaultAnalyticsContext) this.f8931do).f8805do.f8837do;
            File file = this.f8933do;
            defaultFileManager.getClass();
            return new OutputStreamWriter(new FileOutputStream(file, false), StringUtils.f9077do);
        } catch (FileNotFoundException e) {
            throw new EventStoreException("Unable to open session file writer", e);
        } catch (Exception unused) {
            return null;
        }
    }
}
