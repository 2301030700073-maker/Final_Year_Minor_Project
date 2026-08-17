// Decompiles every function in the imported binary and writes each function's
// decompiled C body to a file (or stdout if no path arg is given). The first
// script argument is the output file path. Output format is:
//   FUNC <function-name>
//   <decompiled C, one line per source line>
// Parsed by src/static/native.py ghidra_decompile(). Function-body text is fed
// back through the native signature matcher so technique-level calls (ptrace,
// fork, root-check dispatch) that readelf/strings missed because they live
// inside an opaque function are still seen.
// @category Analysis
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Program;

public class DumpFunctions extends GhidraScript {
    // Cap on how many function bodies are decompiled per lib (default 1500, can
    // be overridden by the second script arg - native.py passes
    // GHIDRA_MAX_FUNCTIONS). A giant React Native rendering lib (librnskia) can
    // hold tens of thousands of functions; dumping EVERY body is O(unbounded)
    // and monopolizes the pipeline on multi-ABI apps. Real root/SSL detection
    // logic lives in a small handful of a lib's functions, so a generous cap
    // bounds the pathological case while leaving any normal-size lib fully
    // decompiled. When the cap is hit the script emits a sentinel line so the
    // Python side marks the lib `partial` (coverage-limited, ADR-0006) - a
    // truncated lib is never falsely certified `fully_analyzed` over an
    // unexamined tail of functions.
    private static final int DEFAULT_MAX_FUNCTIONS = 1500;
    private static final String TRUNCATED_SENTINEL = "__GHIDRA_TRUNCATED__";

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        java.io.PrintWriter out = args.length > 0
            ? new java.io.PrintWriter(new java.io.FileWriter(args[0]))
            : new java.io.PrintWriter(System.out, true);
        int maxFunctions = DEFAULT_MAX_FUNCTIONS;
        if (args.length > 1) {
            try {
                maxFunctions = Integer.parseInt(args[1]);
            } catch (NumberFormatException e) {
                // keep the default on a bad cap arg - never crash the dump
            }
        }

        Program program = getCurrentProgram();
        DecompInterface decomp = new DecompInterface();
        decomp.setSimplificationStyle("decompile");
        decomp.openProgram(program);
        FunctionIterator fns = program.getFunctionManager().getFunctions(true);
        int dumped = 0;
        while (fns.hasNext()) {
            Function fn = fns.next();
            if (fn == null || fn.getBody() == null || fn.getBody().isEmpty()) {
                continue;
            }
            if (dumped >= maxFunctions) {
                // The cap is exhausted: bodies beyond this are unexamined. Emit
                // the sentinel so coverage reads partial, never a false
                // fully_analyzed over the tail we did not decompile.
                out.println(TRUNCATED_SENTINEL + " " + dumped);
                break;
            }
            DecompileResults res = decomp.decompileFunction(fn, 120, monitor);
            if (res == null || !res.decompileCompleted()) {
                continue;
            }
            out.println("FUNC " + fn.getName());
            out.println(res.getDecompiledFunction().getC());
            dumped++;
        }
        decomp.dispose();
        if (args.length > 0) {
            out.flush();
            out.close();
        }
    }
}
