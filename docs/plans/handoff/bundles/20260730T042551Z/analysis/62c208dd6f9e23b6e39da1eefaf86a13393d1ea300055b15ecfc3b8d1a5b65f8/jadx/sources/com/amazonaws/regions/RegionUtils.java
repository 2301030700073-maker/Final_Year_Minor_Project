package com.amazonaws.regions;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class RegionUtils {

    /* renamed from: do, reason: not valid java name */
    public static ArrayList f8966do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Log f8967do = LogFactory.getLog("com.amazonaws.request");

    /* renamed from: do, reason: not valid java name */
    public static synchronized void m5127do() {
        synchronized (RegionUtils.class) {
            if (System.getProperty("com.amazonaws.regions.RegionUtils.fileOverride") != null) {
                try {
                    m5128if();
                } catch (FileNotFoundException e) {
                    throw new RuntimeException("Couldn't find regions override file specified", e);
                }
            }
            if (f8966do == null) {
                Log log = f8967do;
                if (log.isDebugEnabled()) {
                    log.debug("Initializing the regions with default regions");
                }
                f8966do = RegionDefaults.m5123do();
            }
            if (f8966do == null) {
                throw new RuntimeException("Failed to initialize the regions.");
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5128if() {
        String property = System.getProperty("com.amazonaws.regions.RegionUtils.fileOverride");
        Log log = f8967do;
        if (log.isDebugEnabled()) {
            log.debug("Using local override of the regions file (" + property + ") to initiate regions data...");
        }
        FileInputStream fileInputStream = new FileInputStream(new File(property));
        try {
            new RegionMetadataParser();
            f8966do = RegionMetadataParser.m5126if(fileInputStream);
        } catch (Exception e) {
            log.warn("Failed to parse regional endpoints", e);
        }
    }
}
