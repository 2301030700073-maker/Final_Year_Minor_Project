// Ghidra headless script (L-M6): export every function's decompiled C pseudocode.
//
// Written in Java (not Python) because Ghidra 12 removed Jython: a .py script
// requires PyGhidra, which headless mode is not started with ("Ghidra was not
// started with PyGhidra. Python is not available"). A .java script always runs
// under analyzeHeadless, so it is the portable form for the reference pipeline.
//
// Run by the native pipeline via analyzeHeadless:
//   analyzeHeadless <project> <name> -import <lib.so> \
//       -scriptPath <repo>/scripts -postScript ghidra_export_decompiled.java <out.txt>
//
// Writes one block per function in the format parsed by
// static.native.parse_ghidra_decompile:
//     === FUNC: <name> @ <address> ===
//     <decompiled C body>
//
// A function Ghidra cannot decompile is still emitted (with a "(no decompilation)"
// body) so the pipeline sees the function exists but could not be recovered - it
// never mistakes an unrecovered function for an absent one (principle 3).
//@category Analysis

import java.io.PrintWriter;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.util.task.ConsoleTaskMonitor;

public class ghidra_export_decompiled extends GhidraScript {

    @Override
    public void run() throws Exception {
        String outPath = (getScriptArgs().length > 0) ? getScriptArgs()[0] : "decompiled.txt";

        DecompInterface decomp = new DecompInterface();
        decomp.toggleCCode(true);
        decomp.openProgram(currentProgram);
        ConsoleTaskMonitor monitor = new ConsoleTaskMonitor();

        PrintWriter out = new PrintWriter(outPath, "UTF-8");
        FunctionIterator it = currentProgram.getFunctionManager().getFunctions(true);
        while (it.hasNext() && !monitor.isCancelled()) {
            Function f = it.next();
            out.println("=== FUNC: " + f.getName() + " @ " + f.getEntryPoint() + " ===");
            DecompileResults res = decomp.decompileFunction(f, 120, monitor);
            if (res != null && res.decompileCompleted()) {
                out.println(res.getDecompiledFunction().getC());
            } else {
                out.println("(no decompilation)");
            }
            out.println();
        }
        out.close();
        decomp.dispose();
    }
}
